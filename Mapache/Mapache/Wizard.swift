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
    
    let globalFunc = "global"
    
    // MARK: - Variables
    
    // Operators semantic cube
    var semanticCube: JSON!
    
    // Quadruples
    var quadruples = [Quadruple]()
    
    // Global function
    var global: Function!
    
    // Functions
    var functions = [Name:Function]()
    
    var currentFunction = "global"
    
    // Pending jumps
    var jumps = Stack<Int>()
    
    // Operators stack (pOper)
    var operators = Stack<Op>()
    
    // Types stack (pTypes)
    var types = Stack<Type>()
    
    // Operands stack (PilaO)
    var operands = Stack<Int>()
    
    
    
    // MARK: Memory variables
    var constantsMemory: Memory!
    var globalMemory: Memory!
    var localMemory: Memory!
    var tempMemory: Memory!
    
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
    
    // MARK: - Constructor
    
    init(){
        if let path = Bundle.main.path(forResource: "SemanticCube", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
                let jsonObj = try JSON(data: data)
                semanticCube = jsonObj["semanticCube"]
                //print(semanticCube)
            } catch let error {
                print("parse error: \(error.localizedDescription)")
            }
        } else {
            print("Invalid filename/path.")
        }
    }
    
    
    // MARK: - Run functions
    
    func clearModels() {
        quadruples.removeAll()
        
        global = Function(returnType: .Void, startAddress: -1)
        
        currentFunction = globalFunc
        
        functions.removeAll()
        jumps.removeAll()
        types.removeAll()
        operands.removeAll()
        
        constantsMemory = Memory(baseAddress: constantsBaseAddress)
        globalMemory = Memory(baseAddress: globalBaseAddress)
        localMemory = Memory(baseAddress: localBaseAddress)
        tempMemory = Memory(baseAddress: tempBaseAddress)
        
        outputs.removeAll()
        errors.removeAll()
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
            
            print(semanticCube["Float"]["Int"]["*"])
        } catch {
            print("parse error: \(error.localizedDescription)")
        }
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
    private func addQuad(_ op: Op, _ opL: Int?, _ opR: Int?, _ temp: Int?){
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
            print("Error: Type mismatch")
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
    
//    func save(int: Int){
//
//    }
//
//    func save(float: Float){
//
//    }
//
//    func save(bool: Bool) {
//
//    }
//
//    func save(char: Character) {
//
//    }
//
//    func save(string: String) {
//
//    }
    
//    func getNewAddress(forType type: Type) -> Address {
//        if currentFunction == globalFunc {
//            
//        } else {
//            
//        }
//    }
    
    func getTempAddress(forType type: Type) -> Address  {
        switch type {
        case .Int:
            return tempMemory!.save(int: nil)
        case .Float:
            return tempMemory!.save(float: nil)
        case .Char:
            return tempMemory!.save(char: nil)
        case .Bool:
            return tempMemory!.save(bool: nil)
        default:
            return -1
        }
    }
    
    func save(_ value: Any, in address: Address) {
        switch address {
        case ..<constantsBaseAddress:
            #warning ("TODO: ")
            print("Error: address out of tables indexes")
        case ..<globalBaseAddress:
            constantsMemory.save(value, in: address)
        case ..<localBaseAddress:
            globalMemory.save(value, in: address)
        case ..<tempBaseAddress:
            localMemory.save(value, in: address)
        default:
            tempMemory.save(value, in: address)
        }
    }
    
    func saveParam(_ value: Any, in address: Address) {
        #warning ("TODO: ")

    }
    
    func getValue(from address: Address) -> (value: Any, type: Type) {
        
        switch address {
        case ..<0:
            let (arrayAddress,_) = getValue(from: -address)
            return getValue(from: arrayAddress as! Address)
        case ..<constantsBaseAddress:
            #warning ("TODO: ")
            print("Error: address out of tables indexes")
            return (-1, .Void)
        case ..<globalBaseAddress:
            return constantsMemory.getValue(from: address)
        case ..<localBaseAddress:
            return globalMemory.getValue(from: address)
        case ..<tempBaseAddress:
            return localMemory.getValue(from: address)
        default:
            return tempMemory.getValue(from: address)
        }
    }
    
    
}


// MARK: - Walker rules
extension Wizard {
    func enterMapache(_ ctx: MapacheParser.MapacheContext) { }
    
    func exitMapache(_ ctx: MapacheParser.MapacheContext) { }
    
    func enterProgram(_ ctx: MapacheParser.ProgramContext) { }
    
    func exitProgram(_ ctx: MapacheParser.ProgramContext) { }
    
    func enterAsignacion(_ ctx: MapacheParser.AsignacionContext) {
        #warning ("TODO: ")
        // PN1 Asignacion
    }
    
    func exitAsignacion(_ ctx: MapacheParser.AsignacionContext) {
        #warning ("TODO: ")
        // PN3 Asignacion
    }
    
    func enterLlamada(_ ctx: MapacheParser.LlamadaContext) {
        #warning ("TODO: ")
        // PN1 Llamada
        // Verify that the function exists into the dirFunc table.
        
        // PN2 Llamada
        // Generate action ERA size (Activation Record Expansion -NEW -size)
        let funcName = ctx.ID()
        #warning ("TODO: Get func start address")
        let funcStartAddress = -1
        addQuad(.ERA, funcStartAddress, nil, nil)
        // Start the parameter counter (k) in 1.
        // Add a pointer to the first parameter type in the ParameterTable
        
    }
    
    func exitLlamada(_ ctx: MapacheParser.LlamadaContext) {
        #warning ("TODO: ")
        // PN5 Llamada
        // Verify that the last parameter points to null (coherence in number of parameters)
        
        // PN6 Llamada
        // Generate action GoSub, procedure-name, initial-address
        let funcName = ctx.ID()
        
        #warning ("TODO: Get func start address")
        let funcStartAddress = -1
        addQuad(.GoSub, funcStartAddress, nil, nil)
    }
    
    func enterCondicion(_ ctx: MapacheParser.CondicionContext) { }
    
    func exitCondicion(_ ctx: MapacheParser.CondicionContext) {
        #warning ("TODO: ")
        // PN2 If
        let end = jumps.pop()
        fillGoTo(end!, with: quadsCount)
    }
    
    func enterVariable(_ ctx: MapacheParser.VariableContext) { }
    
    func exitVariable(_ ctx: MapacheParser.VariableContext) {
        #warning ("TODO: ")
        // PN Declaracion de variables
        // Checar si es vector o no
    }
    

    
    func enterFuncion(_ ctx: MapacheParser.FuncionContext) {
        
        // PN1 Funcion
        // Reset Virtual Memory directions
        resetLocalMemory()
        
        // Insert func name intro the dirFuncTable, verify semantics
        let funcName = getText(from: ctx.ID().first!)
        
        if functions.keys.contains(funcName) {
            #warning ("TODO: Error. Function already exists")
            return
        }
        
        // If void, init with .Void if not get type from 'tipo'
        
        let returnType = getReturnType(from: ctx)
        
        let startAddress = functions.count
        functions[funcName] = Function(returnType: returnType, startAddress: startAddress)
        currentFunction = funcName
        
        // PN2 Funcion
        var paramsIdsCtx = ctx.ID()
        paramsIdsCtx.remove(at: 0)
        let paramsTypeCtx = ctx.tipo()
        
        let paramsIds = paramsIdsCtx.map({getText(from: $0)})
        print(paramsIds)
        
        let paramsType = paramsTypeCtx.map({getType(from: $0)})
        
        // Here we have all the params with their types
        for i in 0..<paramsIds.count {
            let paramId = paramsIds[i]
            let paramType = paramsType[i]
            // Insert parameter into the current (local) varTable
            // Insert the type to every parameter uploaded into the varTable.
            if (functions[funcName]?.variables.keys.contains(paramId))!{
                #warning ("TODO: Error. Parameter already exists")
                return
            }
            
            #warning ("TODO: Create virtual address")
            let virtualAddress = -1 //getVirtualAddress(forType: Type)
            functions[funcName]?.variables[paramId] = Variable(paramType, virtualAddress)
            
            // At the same time into the parameterTable (to create the function's signature)
            functions[funcName]?.paramsSecuence.append(paramType)
        }
    }
    
    func exitFuncion(_ ctx: MapacheParser.FuncionContext) {
        #warning ("TODO: ")
        // PN7 Funcion
        // Release the current varTable (local).
        //localMemory
        currentFunction = globalFunc
        
        // Generate an action to end the procedure
        addQuad(.EndProc, nil, nil, nil)
    }
    
    func enterBloque(_ ctx: MapacheParser.BloqueContext) { }
    
    func exitBloque(_ ctx: MapacheParser.BloqueContext) { }
    
    func enterBloquefunc(_ ctx: MapacheParser.BloquefuncContext) {
        // PN6 Funcion
        // Insert into dirFunc table the current quadruple counter (cont). To establish where the procedure starts
        let funcCtx = ctx.parent as! MapacheParser.FuncionContext
        let funcName = getText(from: funcCtx.ID().first!)
        functions[funcName]?.startQuadAddress = quadsCount
    }
    
    func exitBloquefunc(_ ctx: MapacheParser.BloquefuncContext) {
        #warning ("TODO: Return")
        // PN? Funcion
        // Check if function has return
        let funcCtx = ctx.parent as! MapacheParser.FuncionContext
        let funcType = getReturnType(from: funcCtx)
        
        if ctx.RETURN() == nil {
            // Function must be Void
            if funcType != .Void {
                print("Error: ")
            }
        } else {
            // Function must not be Void
            if funcType != .Void {
                // Return type must be same type as func return type
                //if funcType
                
            } else {
                print("Error: ")
            }
        }
        
        // if it has return, create Quad
        
        
        //let temp = ctx.expresion()
        // check if expression is same type as function
        //addQuad(.Return, temp, nil, nil)
    }
    
    func enterEstatuto(_ ctx: MapacheParser.EstatutoContext) { }
    
    func exitEstatuto(_ ctx: MapacheParser.EstatutoContext) { }
    
    func enterExpresion(_ ctx: MapacheParser.ExpresionContext) { }
    
    func exitExpresion(_ ctx: MapacheParser.ExpresionContext) { }
    
    func enterExpBool(_ ctx: MapacheParser.ExpBoolContext) { }
    
    func exitExpBool(_ ctx: MapacheParser.ExpBoolContext) {
        // PN ?: Hoja
        switch operators.top()! {
        case .And, .Or:
            addExprQuad()
        default:
            break
        }
    }
    
    func enterExp(_ ctx: MapacheParser.ExpContext) { }
    
    func exitExp(_ ctx: MapacheParser.ExpContext) {
        // PN 9: Hoja
        #warning ("TODO: Check if this was supposed to be in ExitExpBool")
        switch operators.top()! {
        case .LessThan, .GreaterThan, .Equal, .NotEqual:
            addExprQuad()
        default:
            break
        }
    }
    
    func enterTermino(_ ctx: MapacheParser.TerminoContext) {
        
    }
    
    func exitTermino(_ ctx: MapacheParser.TerminoContext) {
        // PN 4: Hoja
        switch operators.top()! {
        case .Sum, .Sub:
            addExprQuad()
        default:
            break
        }
    }
    
    func enterFactor(_ ctx: MapacheParser.FactorContext) {
        if ctx.OPEN_PAREN() != nil {
            // PN 6: Hoja
            operators.push(.FalseBottomMark)
        }
    }
    
    func exitFactor(_ ctx: MapacheParser.FactorContext) {

        if let idNode = ctx.ID() {
            // PN 1: Hoja
            let id = getText(from: idNode)
            
            if let idVar = functions[currentFunction]?.variables[id] {
                addOperandToStacks(address: idVar.address, type: idVar.type)
            } else if let idVar = global.variables[id] {
                addOperandToStacks(address: idVar.address, type: idVar.type)
            } else {
                #warning ("TODO: Error")
                print("Error: The id '\(id)' doesn't exists")
                return
            }
            
        } else if ctx.CLOSE_PAREN() != nil {
            // PN 7: Hoja
            _ = operators.pop()
        }
        
        // PN 5: Hoja
        switch operators.top()! {
        case .Mult, .Div:
            addExprQuad()
        default:
            break
        }
    }
    
    func enterVector(_ ctx: MapacheParser.VectorContext) {
        #warning ("TODO: ")
        // PN1 Acceso vector
    }
    
    func exitVector(_ ctx: MapacheParser.VectorContext) {
        #warning ("TODO: ")
        // PN2 Acceso vector
    }
    
    func enterCiclo(_ ctx: MapacheParser.CicloContext) {
        #warning ("TODO: ")
        // PN1 Ciclo
    }
    
    func exitCiclo(_ ctx: MapacheParser.CicloContext) { }
    
    func enterCicloWhile(_ ctx: MapacheParser.CicloWhileContext) {
        #warning ("TODO: ")
        // PN1 While
        jumps.push(quadsCount)
    }
    
    func exitCicloWhile(_ ctx: MapacheParser.CicloWhileContext) {
        #warning ("TODO: ")
        // PN3 While
        let end = jumps.pop()
        let whileDir = jumps.pop()
        addQuad(.GoTo, nil, nil, whileDir)
        fillGoTo(end!, with: quadsCount)
    }
    
    func enterCicloFor(_ ctx: MapacheParser.CicloForContext) {
        #warning ("TODO: ")
        // PN1 For
    }
    
    func exitCicloFor(_ ctx: MapacheParser.CicloForContext) {
        #warning ("TODO: ")
        // PN4 For
    }
    
    func enterImprimir(_ ctx: MapacheParser.ImprimirContext) { }
    
    func exitImprimir(_ ctx: MapacheParser.ImprimirContext) {
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
        
        if let boolNode = ctx.CONST_B() {
            let bool = getText(from: boolNode).lowercased() == "true" ? true : false
            
            if let boolAddress = constantsMemory.find(bool: bool) {
                addOperandToStacks(address: boolAddress, type: .Bool)
            } else {
                let boolAddress = constantsMemory.save(bool: bool)
                addOperandToStacks(address: boolAddress, type: .Bool)
            }
        } else if let charNode = ctx.CONST_C() {
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
        }
        
    }
    
    func exitCte(_ ctx: MapacheParser.CteContext) { }
    
    func enterCondicionLista(_ ctx: MapacheParser.CondicionListaContext) {
        #warning ("TODO: ")
        // PN1 If
        // PN2 While
        let expType = types.pop()
        if (expType != .Bool) {
            //error type-mismatch
        } else {
            let result = operands.pop()
            addQuad(.GoToFalse, result, nil, nil)
            jumps.push(quadsCount-1)
        }
    }
    
    func exitCondicionLista(_ ctx: MapacheParser.CondicionListaContext) {
    }
    
    func enterCondicionElse(_ ctx: MapacheParser.CondicionElseContext) {
        #warning ("TODO: ")
        // PN3 If
        addQuad(.GoTo, nil, nil, nil)
        let f = jumps.pop()
        jumps.push(quadsCount-1)
        fillGoTo(f!, with: quadsCount)
    }
    
    func exitCondicionElse(_ ctx: MapacheParser.CondicionElseContext) { }
    
    func enterArgumentoListo(_ ctx: MapacheParser.ArgumentoListoContext) {
        #warning ("TODO: ")
        // PN3 Llamada
        let argument = operands.pop()
        let argumentType = types.pop()
        
        // Verify argumentType against current Parameter (#k) in parameterTable.
        if argumentType != argumentType {
            
        }
        // Generate action Parameter, argument, argument#k
        
        addQuad(.Param, nil, nil, argument) // Param nil nil argument
        // Maybe we dont need argument number, if we do, the instruction should be:
        // Param argument nil k (k is the argument number, index)
    }
    
    func exitArgumentoListo(_ ctx: MapacheParser.ArgumentoListoContext) { }
    
    func enterArgumentoNuevo(_ ctx: MapacheParser.ArgumentoNuevoContext) {
        #warning ("TODO: ")
        // PN4 Llamada
        //k = k + 1, move to the next parameter
    }
    
    func exitArgumentoNuevo(_ ctx: MapacheParser.ArgumentoNuevoContext) { }
    
    func enterParamNuevo(_ ctx: MapacheParser.ParamNuevoContext) {}
    
    func exitParamNuevo(_ ctx: MapacheParser.ParamNuevoContext) { }
    
    func enterParamListo(_ ctx: MapacheParser.ParamListoContext) {}
    
    func exitParamListo(_ ctx: MapacheParser.ParamListoContext) { }
    
    func enterForRango(_ ctx: MapacheParser.ForRangoContext) {
        #warning ("TODO: ")
        // PN2 For
    }
    
    func exitForRango(_ ctx: MapacheParser.ForRangoContext) { }
    
    func enterForListo(_ ctx: MapacheParser.ForListoContext) {
        #warning ("TODO: ")
        // PN3 For
    }
    
    func exitForListo(_ ctx: MapacheParser.ForListoContext) { }
    
    func enterAsignacionVector(_ ctx: MapacheParser.AsignacionVectorContext) {
        #warning ("TODO: ")
        // PN2 Asignacion
        // Checar si es vector. No es necesario, si entra a esta funcion SI es vector
        // Parecido a EnterVector/ExitVector
    }
    
    func exitAsignacionVector(_ ctx: MapacheParser.AsignacionVectorContext) { }
    
    func enterAndOr(_ ctx: MapacheParser.AndOrContext){
        let parent = ctx.parent as! MapacheParser.ExpresionContext
        let oper: Op
        
        if parent.AND() != nil {
            oper = .And
        } else {
            oper = .Or
        }
        
        operators.push(oper)
    }
    
    func enterEquality(_ ctx: MapacheParser.EqualityContext){
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
        let parent = ctx.parent as! MapacheParser.ExpContext
        let oper: Op
        
        if parent.PLUS() != nil {
            oper = .Sum
        } else {
            oper = .Sub
        }
        
        operators.push(oper)
    }
    
    func enterMultDiv(_ ctx: MapacheParser.MultDivContext){
        let parent = ctx.parent as! MapacheParser.TerminoContext
        let oper: Op
        
        if parent.MULTIPLY() != nil {
            oper = .Mult
        } else {
            oper = .Div
        }
        
        operators.push(oper)
    }
    
}


// MARK: - Walker nodes and rules
extension Wizard {
    func enterEveryRule(_ ctx: ParserRuleContext) {
        
    }
    
    func exitEveryRule(_ ctx: ParserRuleContext) { }
    
    func visitTerminal(_ node: TerminalNode) { }
    
    func visitErrorNode(_ node: ErrorNode) { }
}
