//
//  Wizard.swift
//  Mapache
//
//  Created by Luis Salazar on 10/15/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation
import Antlr4
import SwiftyJSON



class Wizard{
    
    // Singletone
    static let shared = Wizard()
    
    // MARK: - Constants
    let constantsBaseAddress = 5000
    let globalBaseAddress = 10000
    let localBaseAddress = 15000
    let tempBaseAddress = 20000
    let tempGlobalAddress = 25000
    
    let globalFunc = "global"
    
    // MARK: - Variables
    
    // Operators semantic cube
    var semanticCube: JSON!
    
    // Quadruples
    var quadruples = [Quadruple]()
    
    // Global function
    //var global: Function!
    
    // Functions
    var functions = [Name:Function]()
    
    var currentFunction = "global"
    
    var argNum = 0
    
    // Pending jumps
    var jumps = Stack<Int>()
    var globalJumps = Stack<Int>()
    
    /// Operators stack (pOper)
    var operators = Stack<Op>()
    
    /// Types stack (pTypes)
    var types = Stack<Type>()
    
    /// Operands stack (PilaO)
    var operands = Stack<Int>()
    
    var funcAddressHistory = Stack<Int>()
    var comingFuncAddress = Stack<Int>()
    
    var stop = false
    
    // MARK: Memory variables
    var constantsMemory: Memory!
    var globalMemory: Memory!
    var localMemory: Memory!
    var tempMemory: Memory!
    var tempGlobalMemory: Memory!
    
    var tempLocalMemory: Memory!
    var tempTempMemory: Memory!
    
    // For VM
    var localsHistory = Stack<Memory>()
    var tempsHistory = Stack<Memory>()
    
    var callsHistory = Stack<Int>()
    
    // MARK: EditorVC variables
    var editorVC: EditorVC!
    
    var outputs: [String] = []
    var errors: [String] = []
    
    
    
    // MARK: - Get variables
    // Quadruples count
    var quadsCount: Int {
        get {
            return quadruples.count
        }
    }
    
    var isGlobal: Bool {
        get {
            return currentFunction == globalFunc
        }
    }
    
    // MARK: - Constructor
    
    init(){
        if let path = Bundle.main.path(forResource: "SemanticCube", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
                let jsonObj = try JSON(data: data)
                semanticCube = jsonObj["semanticCube"]
            } catch let error {
                compileError("Parse error \(error.localizedDescription)")
            }
        } else {
            compileError("Couldn't find semanticCube")
        }
    }
    
    
    // MARK: - Run functions
    
    func clearModels() {
        quadruples.removeAll()
        
        stop = false
        
        currentFunction = globalFunc
        
        functions.removeAll()
        globalJumps.removeAll()
        jumps.removeAll()
        types.removeAll()
        operands.removeAll()
        
        constantsMemory = Memory(baseAddress: constantsBaseAddress)
        globalMemory = Memory(baseAddress: globalBaseAddress)
        localMemory = Memory(baseAddress: localBaseAddress)
        tempMemory = Memory(baseAddress: tempBaseAddress)
        tempGlobalMemory = Memory(baseAddress: tempGlobalAddress)
        
        outputs.removeAll()
        errors.removeAll()
        
        functions[currentFunction] = Function(returnType: .Void, address: -1, quadAddress: -1)
    }
    
    func runCode(input: String, vc: EditorVC){
        clearModels()
        
        editorVC = vc
        
        do {
            let lexer = MapacheLexer(ANTLRInputStream(input))
            let tokens = CommonTokenStream(lexer)
            let parser = try MapacheParser(tokens)
            let tree = try parser.mapache()
            
            let walker = ParseTreeWalker()
            let extractor = MapacheWalker.init()
            try walker.walk(extractor, tree)
        } catch {
            compileError("Parse error: \(error.localizedDescription)")
        }
    }
    
    func compileError(_ message: String) {
        editorVC.showCompileError(message)
        stop = true
    }
    
    // MAR: - Semantic cube functions
    
    func getResultType(_ left: Type, _ right: Type, _ oper: Op) -> Type {
        let rawType = semanticCube[String(left.rawValue)][String(right.rawValue)][String(oper.rawValue)].int!
        return Type(rawValue: rawType)!
    }
    
    // MARK: - Manage Quadruples
    
    /// Create a Quad and add it to the quadruples array
    ///
    /// - Parameters:
    ///   - op: Operator
    ///   - opL: Left Operand
    ///   - opR: Right Operand
    ///   - temp: Temp var \ Sometimes direction for some instructions
    private func addQuad(_ op: Op, _ opL: Address?, _ opR: Address?, _ temp: Address?){
        let quad = Quadruple(op, opL, opR, temp)
        quadruples.append(quad)
    }
    
    /// Fill the quad with direction
    ///
    /// - Parameters:
    ///   - quadToFill: index of the quad, in quadruples array, to fill with the direction
    ///   - direction: direction to fill to the quad
    private func fillGoTo(_ quadToFill: Int, with direction: Int) {
        quadruples[quadToFill].temp = direction
    }
    
    func getTempAddress(forType type: Type) -> Address {
        if isGlobal {
            return tempGlobalMemory.save(type)
        } else {
            return tempMemory.save(type)
        }
    }
    
    func addExprQuad(){
        let (opR, typeR) = getOperandAndType()
        let (opL, typeL) = getOperandAndType()
        let oper = operators.pop()!
        
        let resultType = getResultType(typeL, typeR, oper)
        
        if resultType != .Error {
            let resultAddress = getTempAddress(forType: resultType)
            addQuad(oper, opL, opR, resultAddress)
            addOperandToStacks(address: resultAddress, type: resultType)
        } else {
            compileError("Type mismatch")
        }
        
    }
    
    // MARK: - CTX functions
    
    func getText(from node: TerminalNode ) -> String {
        return (node.getSymbol()?.getText())!
    }
    
    func getType(from ctx: MapacheParser.TipoContext) -> Type {
        
        if ctx.INT() != nil {
            return .Int
        } else if ctx.FLOAT() != nil {
            return .Float
        } else if ctx.BOOL() != nil {
            return .Bool
        } else if ctx.CHAR() != nil {
            return .Char
        }
        
        return .Void
    }
    
    func getReturnType(from functionCtx: MapacheParser.FuncionContext) -> Type {
        return (functionCtx.VOID() != nil) ? .Void : getType(from: functionCtx.tipo().last!)
    }
    
    // MARK: - Manage Stacks
    func addOperandToStacks(address: Address, type: Type) {
        operands.push(address)
        types.push(type)
    }
    
    func getOperandAndType() -> (operand: Address, type: Type) {
        let operand = operands.pop()!
        let type = types.pop()!
        return (operand, type)
    }
}


// MARK: - Memory handling functions
extension Wizard {
    
    func resetLocalMemory() {
        localMemory.reset()
        tempMemory.reset()
    }
    
    func getParamType(from funcName: String, paramNum: Int) -> Type {
        if let type = functions[funcName]?.paramsSecuence[paramNum-1] {
            return type
        }
        return .Error
    }
    
    func getFuncAddress(with funcName: String) -> Address {
        if let address = functions[funcName]?.address {
            return address
        }
        return -1
    }
    
    func save(_ value: Any, in address: Address) {
        switch address {
        case ..<0:
            let (arrayAddress,_) = getValue(from: -address)
//            return getValue(from: arrayAddress as! Address)
            save(value, in: arrayAddress as! Int)
        case ..<constantsBaseAddress:
            let function = getFuncWithAddress(address)
            let funcName = getFuncName(of: function)
            let globalReturnVar = functions[funcName]?.variables[funcName]
            let globalReturnAddress = (globalReturnVar?.address)!
            save(value, in: globalReturnAddress)
        case ..<globalBaseAddress:
            constantsMemory.save(value, in: address)
        case ..<localBaseAddress:
            globalMemory.save(value, in: address)
        case ..<tempBaseAddress:
            localMemory.save(value, in: address)
        case ..<tempGlobalAddress:
            tempMemory.save(value, in: address)
        default:
            tempGlobalMemory.save(value, in: address)
        }
    }

    func getFuncName(of function: Function) -> String {
        return functions.someKey(forValue: function)!
    }
    
    func getValue(from address: Address) -> (value: Any, type: Type) {
        
        switch address {
        case ..<0:
            let (arrayAddress,_) = getValue(from: -address)
            return getValue(from: arrayAddress as! Address)
        case ..<constantsBaseAddress:
            let function = getFuncWithAddress(address)
            let funcName = getFuncName(of: function)
            let globalReturnVar = functions[globalFunc]?.variables[funcName]
            let globalReturnAddress = (globalReturnVar?.address)!
            
            return getValue(from: globalReturnAddress)
        case ..<globalBaseAddress:
            return constantsMemory.getValue(from: address)
        case ..<localBaseAddress:
            return globalMemory.getValue(from: address)
        case ..<tempBaseAddress:
            return localMemory.getValue(from: address)
        case ..<tempGlobalAddress:
            return tempMemory.getValue(from: address)
        default:
            return tempGlobalMemory.getValue(from: address)
        }
    }
    
    
    func getVariable(withId id: String) -> Variable? {
        if let idVar = functions[currentFunction]?.variables[id] {
            return idVar
        } else if let idVar = functions[globalFunc]?.variables[id] {
            return idVar
        } else {
            compileError("Variable '\(id)' does not exists")
            return nil
        }
        
    }
    
    func printQuads() {
        
        func formatNumber(_ string: String) -> String{
            var str = string
            let length = str.count
            let new = 6 - length
           
                for _ in 0..<new {
                    str.insert(" ", at: str.startIndex)
                }
            
            return str
        }
        
        print("#  Operators   Left   Right  Temp  ")
        print("-----------------------------------")
        for index in 0..<quadsCount {
            let quad = quadruples[index]
            
            var indexString = "\(index)"
            var op = "\(quad.op)"
            var left = quad.operandLeft?.description ?? "_____"
            var right = quad.operandRight?.description ?? "_____"
            var temp = quad.temp?.description ?? "_____"
            
            let length = op.count
            if length != 11 {
                let new = 11 - length
                for _ in 1...new {
                    op += " "
                }
            }
            
            let newIndexString = indexString + " "
            indexString = indexString.count == 1 ? newIndexString : indexString
            left = formatNumber(left)
            right = formatNumber(right)
            temp = formatNumber(temp)
            
            print(indexString, op, left, right, temp)
           
        }
    }
}


// MARK: - Walker rules
extension Wizard {
    func enterMapache(_ ctx: MapacheParser.MapacheContext) {
        if stop { return }
        
    }
    
    func exitMapache(_ ctx: MapacheParser.MapacheContext) {
        if stop { return }
        
        if let globalJump = globalJumps.pop() {
            fillGoTo(globalJump, with: quadsCount)
        }
        addQuad(.End, nil, nil, nil)
        printQuads()
        execute()
    }
    
    func enterProgram(_ ctx: MapacheParser.ProgramContext) {
        if stop { return }
    }
    
    func exitProgram(_ ctx: MapacheParser.ProgramContext) {
        if stop { return }
    }
    
    func enterAsignacion(_ ctx: MapacheParser.AsignacionContext) {
        if stop { return }
        
        // PN1 Asignacion
        if ctx.ID() != nil {
            let id = getText(from: ctx.ID()!)
            
            guard let variable = getVariable(withId: id) else { return }
            addOperandToStacks(address: variable.address, type: variable.type)
        }
    }
    
    func exitAsignacion(_ ctx: MapacheParser.AsignacionContext) {
        if stop { return }
        
        // PN2 Asignacion
        let (resultVal, resultType) = getOperandAndType()
        let (idVal, idType) = getOperandAndType()
        
        // Checar cubo semantico
        let assignType = getResultType(idType, resultType, .Assign)
        if assignType == .Error {
            compileError("Can't assign expression of type '\(resultType)' to variable'")
        } else {
            addQuad(.Assign, resultVal, nil, idVal)
        }
    }
    
    func enterLlamada(_ ctx: MapacheParser.LlamadaContext) {
        if stop { return }
        
        let funcName = getText(from: ctx.ID()!)
        
        // PN1 Llamada
        // Verify that the function exists into the dirFunc table.
        if !functions.keys.contains(funcName) {
            compileError("Function '\(funcName)' does not exists")
            return
        }
        
        let returnType = (functions[funcName]?.returnType)!
       
        if (ctx.parent as? MapacheParser.EstatutoContext) != nil {
            // Only void funcs on Estatutos
            if returnType != .Void {
                compileError("Function '\(funcName)' has return type and can't be called like this")
                return
            }
        } else {
            // Only void funcs on Estatutos
            if returnType == .Void {
                compileError("Function '\(funcName)' is Void and can't be called like this")
                return
            }
        }
        
        // PN2 Llamada
        // Generate action ERA size (Activation Record Expansion -NEW -size)
        let funcStartAddress = getFuncAddress(with: funcName)
        addQuad(.ERA, funcStartAddress, nil, nil)
        
        // Start the parameter counter (k) in 1.
        argNum = 1
        // Add a pointer to the first parameter type in the ParameterTable
        operators.push(.FalseBottomMark)
    }
    
    func exitLlamada(_ ctx: MapacheParser.LlamadaContext) {
        if stop { return }
        
        _ = operators.pop()
        // PN5 Llamada
        // Verify that the last parameter points to null (coherence in number of parameters)
        argNum = 0
        
        // PN6 Llamada
        // Generate action GoSub, procedure-name, initial-address
        let funcName = getText(from: ctx.ID()!)
        let funcAddress = getFuncAddress(with: funcName)
        addQuad(.GoSub, funcAddress, nil, nil)
        
        // Check if function has return
        let returnType = (functions[funcName]?.returnType)!
        if returnType != .Void {
            let tempAddress = getTempAddress(forType: returnType)
            addQuad(.Assign, funcAddress, nil, tempAddress)
            addOperandToStacks(address: tempAddress, type: returnType)
        }
        
    }
    
    func enterCondicion(_ ctx: MapacheParser.CondicionContext) { }
    
    func exitCondicion(_ ctx: MapacheParser.CondicionContext) {
        if stop { return }
        
        // PN2 If
        let end = jumps.pop()
        fillGoTo(end!, with: quadsCount)
    }
    
    
    func enterVariable(_ ctx: MapacheParser.VariableContext) {
    }
    
    func exitVariable(_ ctx: MapacheParser.VariableContext) {
        if stop { return }
        
        // PN Declaracion de variables
        
        // Validate that variable does not exists
        let varName = getText(from: ctx.ID()!)
        if (functions[currentFunction]?.variables.keys.contains(varName))! {
            compileError("Variable '\(varName)' already exists")
            return
        }
        
        let varType = getType(from: ctx.tipo()!)
        
        if let arrSizeNode = ctx.CONST_I() {
            // Variable is vector
            let arrSize = Int(getText(from: arrSizeNode))!
            
            let varAddress = isGlobal ? globalMemory.save(varType) : localMemory.save(varType)
            
            for _ in 1..<arrSize {
                _ = isGlobal ? globalMemory.save(varType) : localMemory.save(varType)
            }
            
            let variable = Variable(varType, varAddress, arrSize)
            functions[currentFunction]?.variables[varName] = variable
        } else {
            // Variable isn't a vector
            let varAddress = isGlobal ? globalMemory.save(varType) : localMemory.save(varType)
            let variable = Variable(varType, varAddress)
            functions[currentFunction]?.variables[varName] = variable
        }
        
    }
    
    func enterFuncion(_ ctx: MapacheParser.FuncionContext) {
        if stop { return }
        globalJumps.push(quadsCount)
        addQuad(.GoTo, nil, nil, nil)
        
        let funcName = getText(from: ctx.ID().first!)
        if let parent = ctx.parent as? MapacheParser.EstatutoContext {
            if (parent.parent as? MapacheParser.BloquefuncContext) != nil {
                compileError("Can't declare function '\(funcName)' inside another function")
            }
        }
        
        // PN1 Funcion
        // Reset Virtual Memory directions
        resetLocalMemory()
        
        // Insert func name intro the dirFuncTable, verify semantics
        if functions.keys.contains(funcName) {
            compileError("Function '\(funcName)' already exists")
            return
        }
        
        let returnType = getReturnType(from: ctx)
        
        let startAddress = functions.count
        currentFunction = funcName
        functions[currentFunction] = Function(returnType: returnType, address: startAddress, quadAddress: quadsCount)
        
        // Create global var with func name for return
        let returnVarAddress =  globalMemory.save(returnType)
        let returnVar = Variable(returnType, returnVarAddress)
        functions[globalFunc]?.variables[funcName] = returnVar
        
        // PN2 Funcion
        var paramsIdsCtx = ctx.ID()
        paramsIdsCtx.remove(at: 0)
        let paramsTypeCtx = ctx.tipo()
        
        let paramsIds = paramsIdsCtx.map({getText(from: $0)})
        
        let paramsType = paramsTypeCtx.map({getType(from: $0)})
        
        // Here we have all the params with their types
        for i in 0..<paramsIds.count {
            let paramId = paramsIds[i]
            let paramType = paramsType[i]
            // Insert parameter into the current (local) varTable
            // Insert the type to every parameter uploaded into the varTable.
            if (functions[currentFunction]?.variables.keys.contains(paramId))!{
                compileError("Parameter '\(paramId)' already exists")
                return
            }
            
            let virtualAddress = localMemory.save(paramType)
            functions[funcName]?.variables[paramId] = Variable(paramType, virtualAddress, paramIndex: i)
            
            // At the same time into the parameterTable (to create the function's signature)
            functions[funcName]?.paramsSecuence.append(paramType)
        }
    }
    
    func exitFuncion(_ ctx: MapacheParser.FuncionContext) {
        if stop { return }
        
        // PN7 Funcion
        // Release the current varTable (local).
        currentFunction = globalFunc
        
        // Generate an action to end the procedure
        addQuad(.EndProc, nil, nil, nil)
    }
    
    func enterBloque(_ ctx: MapacheParser.BloqueContext) { }
    
    func exitBloque(_ ctx: MapacheParser.BloqueContext) { }
    
    func enterBloquefunc(_ ctx: MapacheParser.BloquefuncContext) { }
    
    func exitBloquefunc(_ ctx: MapacheParser.BloquefuncContext) {
        if stop { return }
        
        // PN? Funcion
        // Check if function has return
        let funcCtx = ctx.parent as! MapacheParser.FuncionContext
        let funcName = getText(from: funcCtx.ID().first!)
        let funcType = getReturnType(from: funcCtx)
        
        if ctx.RETURN() == nil {
            // Function must be Void
            if funcType != .Void {
                compileError("Function '\(funcName)' needs return")
            }
        } else {
            // Function must not be Void
            if funcType != .Void {
                // Return type must be same type as func return type
                //if funcType
                let (operVal, operType) = getOperandAndType()
                if operType == funcType {
                    // Create Return Quad
                    addQuad(.Return, operVal, nil, nil)
                } else {
                    compileError("Return type must be same type as function '\(funcName)' return type")
                }
                
            } else {
                compileError("Function '\(funcName)' is Void, can't have a return")
            }
        }
    }
    
    func enterEstatuto(_ ctx: MapacheParser.EstatutoContext) {
        if currentFunction == globalFunc {
            if let globalJump = globalJumps.pop() {
                fillGoTo(globalJump, with: quadsCount)
            }
        }
    }
    
    func exitEstatuto(_ ctx: MapacheParser.EstatutoContext) { }
    
    func enterExpresion(_ ctx: MapacheParser.ExpresionContext) { }
    
    func exitExpresion(_ ctx: MapacheParser.ExpresionContext) { }
    
    func enterExpBool(_ ctx: MapacheParser.ExpBoolContext) { }
    
    func exitExpBool(_ ctx: MapacheParser.ExpBoolContext) {
        if stop { return }
        // PN ?: Hoja
        if let oper = operators.top() {
            switch oper {
            case .And, .Or:
                addExprQuad()
            default:
                break
            }
        }
        
    }
    
    func enterExp(_ ctx: MapacheParser.ExpContext) { }
    
    func exitExp(_ ctx: MapacheParser.ExpContext) {
        if stop { return }
        // PN 9: Hoja
        if let oper = operators.top() {
            switch oper {
            case .LessThan, .GreaterThan, .Equal, .NotEqual:
                addExprQuad()
            default:
                break
            }
        }
        
    }
    
    func enterTermino(_ ctx: MapacheParser.TerminoContext) {}
    
    func exitTermino(_ ctx: MapacheParser.TerminoContext) {
        if stop { return }
        
        // PN 4: Hoja
        if let oper = operators.top() {
            switch oper {
            case .Sum, .Sub:
                addExprQuad()
            default:
                break
            }
        }
    }
    
    func enterFactor(_ ctx: MapacheParser.FactorContext) {
        if stop { return }
        
        if ctx.OPEN_PAREN() != nil {
            // PN 6: Hoja
            operators.push(.FalseBottomMark)
        }
    }
    
    func exitFactor(_ ctx: MapacheParser.FactorContext) {
        if stop { return }
        
        if let idNode = ctx.ID() {
            // PN 1: Hoja
            let id = getText(from: idNode)
            guard let idVar = getVariable(withId: id) else { return}
            
            addOperandToStacks(address: idVar.address, type: idVar.type)
        } else if ctx.CLOSE_PAREN() != nil {
            // PN 7: Hoja
            _ = operators.pop()
        }
        
        // PN 5: Hoja
        if let oper = operators.top() {
            switch oper {
            case .Mult, .Div:
                addExprQuad()
            default:
                break
            }
        }
        
    }
    
    func enterVector(_ ctx: MapacheParser.VectorContext) {
        if stop { return }
        
        // PN1 Acceso vector
        let id = getText(from: ctx.ID()!)
        
        guard let _ = getVariable(withId: id) else { return }
        
        operators.push(.FalseBottomMark)
    }
    
    func exitVector(_ ctx: MapacheParser.VectorContext) {
        if stop { return }
        
        // PN3 Acceso vector
        let id = getText(from: ctx.ID()!)
        
        let resultType = types.top()!
        if resultType != .Int {
            compileError("Can't access array '\(id)'. Index needs to be an Int")
            return
        }
        
        let resultVal = operands.top()!
        let variable = getVariable(withId: id)!
        addQuad(.Verify, resultVal, nil, variable.arrSize!)
        
        // PN5 Acceso vector
        let arrStartAddress = variable.address!
        let (indexVal, _) = getOperandAndType()
        let realIndexAddress = getTempAddress(forType: .Int)
        
        let arrBaseAddress = constantsMemory.save(int: arrStartAddress)
        
        addQuad(.Sum, indexVal, arrBaseAddress, realIndexAddress)
        addOperandToStacks(address: -realIndexAddress, type: variable.type)
        _ = operators.pop() // Pop FalseBottomMark
    }
    
    func enterCiclo(_ ctx: MapacheParser.CicloContext) {}
    
    func exitCiclo(_ ctx: MapacheParser.CicloContext) { }
    
    func enterCicloWhile(_ ctx: MapacheParser.CicloWhileContext) {
        if stop { return }
        
        // PN1 While
        jumps.push(quadsCount)
    }
    
    func exitCicloWhile(_ ctx: MapacheParser.CicloWhileContext) {
        if stop { return }
        
        // PN3 While
        let end = jumps.pop()
        let whileDir = jumps.pop()
        addQuad(.GoTo, nil, nil, whileDir)
        fillGoTo(end!, with: quadsCount)
    }
    
    func enterCicloFor(_ ctx: MapacheParser.CicloForContext) {
        if stop { return }
        #warning ("TODO: ")
        // PN1 For
    }
    
    func exitCicloFor(_ ctx: MapacheParser.CicloForContext) {
        if stop { return }
        #warning ("TODO: ")
        // PN4 For
    }
    
    func enterImprimir(_ ctx: MapacheParser.ImprimirContext) { }
    
    func exitImprimir(_ ctx: MapacheParser.ImprimirContext) {
        if stop { return }
        
        if let textNode = ctx.TEXT() {
            let string = getText(from: textNode)
            if let stringAddress = constantsMemory.find(string: string) {
                addOperandToStacks(address: stringAddress, type: .String)
                addQuad(.Print, stringAddress, nil, nil)
            } else {
                let stringAddress = constantsMemory.save(string: string)
                addQuad(.Print, stringAddress, nil, nil)
            }
        } else {
            let (operand, _) = getOperandAndType()
            addQuad(.Print, operand, nil, nil)
        }
    }
    
    func enterTipo(_ ctx: MapacheParser.TipoContext) { }
    
    func exitTipo(_ ctx: MapacheParser.TipoContext) { }
    
    func enterCte(_ ctx: MapacheParser.CteContext) {
        if stop { return }
        
        if let charNode = ctx.CONST_C() {
            let charText = getText(from: charNode)
            let char = Character(charText[1])
            
            if let charAddress = constantsMemory.find(char: char) {
                addOperandToStacks(address: charAddress, type: .Char)
            } else {
                let charAddress = constantsMemory.save(char: char)
                addOperandToStacks(address: charAddress, type: .Char)
            }
        } else if let floatNode = ctx.CONST_F() {
            var float = Float(getText(from: floatNode))!
            
            if ctx.MINUS() != nil {
                float = -float
            }
            
            if let floatAddress = constantsMemory.find(float: float) {
                addOperandToStacks(address: floatAddress, type: .Float)
            } else {
                let floatAddress = constantsMemory.save(float: float)
                addOperandToStacks(address: floatAddress, type: .Float)
            }
        } else if let intNode = ctx.CONST_I() {
            var int = Int(getText(from: intNode))!
            
            if ctx.MINUS() != nil {
                int = -int
            }
            
            if let intAddress = constantsMemory.find(int: int) {
                addOperandToStacks(address: intAddress, type: .Int)
            } else {
                let intAddress = constantsMemory.save(int: int)
                addOperandToStacks(address: intAddress, type: .Int)
            }
        } else {
            let boolText = ctx.getText()
            let bool = boolText == "true" ? true : false
            
            if let boolAddress = constantsMemory.find(bool: bool) {
                addOperandToStacks(address: boolAddress, type: .Bool)
            } else {
                let boolAddress = constantsMemory.save(bool: bool)
                addOperandToStacks(address: boolAddress, type: .Bool)
            }
        }
        
    }
    
    func exitCte(_ ctx: MapacheParser.CteContext) { }
    
    func enterCondicionLista(_ ctx: MapacheParser.CondicionListaContext) {
        if stop { return }
        
        // PN1 If PN2 While
        let expType = types.pop()
        if (expType != .Bool) {
            compileError("Type-mismatch")
        } else {
            let result = operands.pop()
            jumps.push(quadsCount)
            addQuad(.GoToFalse, result, nil, nil)
        }
    }
    
    func exitCondicionLista(_ ctx: MapacheParser.CondicionListaContext) {
    }
    
    func enterCondicionElse(_ ctx: MapacheParser.CondicionElseContext) {
        if stop { return }
        
        // PN3 If
        addQuad(.GoTo, nil, nil, nil)
        let f = jumps.pop()
        jumps.push(quadsCount-1)
        fillGoTo(f!, with: quadsCount)
    }
    
    func exitCondicionElse(_ ctx: MapacheParser.CondicionElseContext) { }
    
    func enterArgumentoListo(_ ctx: MapacheParser.ArgumentoListoContext) {
        if stop { return }
        
        // PN3 Llamada
        let (argVal, argType) = getOperandAndType()
        
        // Verify argumentType against current Parameter (#k) in parameterTable.
        let parentCtx = ctx.parent as! MapacheParser.LlamadaContext
        let funcName = getText(from: parentCtx.ID()!)
        
        let paramType = getParamType(from: funcName, paramNum: argNum)
        if argType != paramType {
            compileError("Argument does not match parameter type from func '\(funcName)'. Argument is type '\(argType)' and it must be '\(paramType)'")
        }
        
        // Generate action Parameter, argument, argument#k
        addQuad(.Param, argVal, nil, argNum) // Param nil nil argument
    }
    
    func exitArgumentoListo(_ ctx: MapacheParser.ArgumentoListoContext) { }
    
    func enterArgumentoNuevo(_ ctx: MapacheParser.ArgumentoNuevoContext) {
        if stop { return }
        
        // PN4 Llamada
        //k = k + 1, move to the next parameter
        argNum += 1
    }
    
    func exitArgumentoNuevo(_ ctx: MapacheParser.ArgumentoNuevoContext) { }
    
    func enterParamNuevo(_ ctx: MapacheParser.ParamNuevoContext) {}
    
    func exitParamNuevo(_ ctx: MapacheParser.ParamNuevoContext) { }
    
    func enterParamListo(_ ctx: MapacheParser.ParamListoContext) {}
    
    func exitParamListo(_ ctx: MapacheParser.ParamListoContext) { }
    
    func enterForRango(_ ctx: MapacheParser.ForRangoContext) {
        if stop { return }
        #warning ("TODO: ")
        // PN2 For
    }
    
    func exitForRango(_ ctx: MapacheParser.ForRangoContext) { }
    
    func enterForListo(_ ctx: MapacheParser.ForListoContext) {
        if stop { return }
        #warning ("TODO: ")
        // PN3 For
    }
    
    func exitForListo(_ ctx: MapacheParser.ForListoContext) { }
    
    func enterAndOr(_ ctx: MapacheParser.AndOrContext){
        if stop { return }
        
        let parent = ctx.parent as! MapacheParser.ExpresionContext
        let oper: Op = parent.AND() != nil ? .And : .Or
        
        operators.push(oper)
    }
    
    func enterEquality(_ ctx: MapacheParser.EqualityContext){
        if stop { return }
        
        let parent = ctx.parent as! MapacheParser.ExpBoolContext
        let oper: Op
        
        if parent.LESS_THAN() != nil {
            oper = .LessThan
        } else if parent.GREATER_THAN() != nil {
            oper = .GreaterThan
        } else if parent.EQUAL() != nil {
            oper = .Equal
        } else {
            oper = .NotEqual
        }
        
        operators.push(oper)
    }
    
    func enterSubAdd(_ ctx: MapacheParser.SubAddContext){
        if stop { return }
        
        let parent = ctx.parent as! MapacheParser.ExpContext
        let oper: Op = parent.PLUS() != nil ? .Sum : .Sub
        
        operators.push(oper)
    }
    
    func enterMultDiv(_ ctx: MapacheParser.MultDivContext){
        if stop { return }
        
        let parent = ctx.parent as! MapacheParser.TerminoContext
        let oper: Op = parent.MULTIPLY() != nil ? .Mult : .Div
        
        operators.push(oper)
    }
    
}


// MARK: - Walker nodes and rules
extension Wizard {
    func enterEveryRule(_ ctx: ParserRuleContext) {}
    
    func exitEveryRule(_ ctx: ParserRuleContext) { }
    
    func visitTerminal(_ node: TerminalNode) { }
    
    func visitErrorNode(_ node: ErrorNode) {
        print("Visit error node")
    }
}
