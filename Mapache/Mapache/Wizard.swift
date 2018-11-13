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


struct Stack<T> {
    var array: [T] = []
    
    mutating func push(_ element: T) {
        array.append(element)
    }
    mutating func pop() -> T? {
        if !array.isEmpty {
            let index = array.count - 1
            let poppedValue = array.remove(at: index)
            return poppedValue
        } else {
            return nil
        }
    }
    
    mutating func removeAll() {
        array.removeAll()
    }
}

class Wizard{
    
    // Singletone
    static let shared = Wizard()
    
    // MARK: Variables
    
    // Ops
    var semanticCube: JSON!
    
    // Quadruple
    var quadruples = [Quadruple]()
    
    
    var global: Function!
    // Function
    var functions = [Name:Function]()
    
    // Pending jumps
    var jumps = Stack<Int>()
    
    // Pending types
    var types = Stack<Type>()
    
    // PilaO
    var operands = Stack<Int>()
    
    // Quadruples count
    var cont: Int {
        get {
            return quadruples.count
        }
    }
    
    // MARK: Memory variables
    var globalMemory = Memory(baseAddress: 5000)
    var localMemory = Memory(baseAddress: 10000)
    var constantsMemory = Memory(baseAddress: 15000)
    
    #warning ("TODO: Change init")
    
    
    var currentLocalInt = 0
    var currentLocalFloat = 0
    var currentLocalChar = 0
    var currentLocalBool = 0
    
    
    // MARK: Constructor
    
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
    
    
    // MARK: Functions
    
    func clearModels() {
        quadruples.removeAll()
        
        functions.removeAll()
        jumps.removeAll()
        types.removeAll()
        operands.removeAll()
    }
    
    func runCode(input: String){
        clearModels()
        
        
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
    
    // MARK: Manage Quadruples
    
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
    
    // MARK: CTX functions
    
//    func getText(from arr: [TerminalNode] ) -> String {
//        let str = arr.compactMap({$0.getSymbol()?.getText()}).joined()
//        return str
//    }
    
    func getText(from node: TerminalNode ) -> String {
        return (node.getSymbol()?.getText())!
    }
    
//    func getType(from arr: [TerminalNode]) -> Type {
//        let stringType = getText(from: arr)
//        return Type(stringType)!
//    }
    
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
}


// MARK: - Memory handling functions
extension Wizard {
    
    func save(int: Int){
        
    }
    
    func save(float: Float){
        
    }
    
    func save(bool: Bool) {
        
    }
    
    func save(char: Character) {
        
    }
    
    func save(string: String) {
        
    }
    
    func setValue(_ value: Any, in address: Address) {
        #warning ("TODO: ")
    }
    
    func getValue(from address: Address) -> Any {
        #warning ("TODO: ")
        return 1
    }
    
    func setParamValue(_ value: Any, in address: Address) {
        #warning ("TODO: ")
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
        fillGoTo(end!, with: cont)
    }
    
    func enterVariable(_ ctx: MapacheParser.VariableContext) { }
    
    func exitVariable(_ ctx: MapacheParser.VariableContext) {
        #warning ("TODO: ")
        // PN Declaracion de variables
        // Checar si es vector o no
    }
    
    func enterFuncion(_ ctx: MapacheParser.FuncionContext) {
        #warning ("TODO: ")
        // PN1 Funcion
        // Reset Virtual Memory directions
        #warning ("TODO: Reset Virtual Memory directions")
        currentLocalInt = 0
        currentLocalFloat = 0
        currentLocalChar = 0
        currentLocalBool = 0
        
        // Insert func name intro the dirFuncTable, verify semantics
        let funcName = getText(from: ctx.ID().first!)
        
        if functions.keys.contains(funcName) {
            #warning ("TODO: Error. Function already exists")
            return
        }
        
        // If void, init with .Void if not get type from 'tipo'
        let returnType = (ctx.VOID() != nil) ? .Void : getType(from: ctx.tipo().last!)
        
        let startAddress = functions.count
        functions[funcName] = Function(returnType: returnType, startAddress: startAddress)
        
        
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
        
        // Generate an action to end the procedure
        addQuad(.EndProc, nil, nil, nil)
    }
    
    func enterBloque(_ ctx: MapacheParser.BloqueContext) { }
    
    func exitBloque(_ ctx: MapacheParser.BloqueContext) { }
    
    func enterBloquefunc(_ ctx: MapacheParser.BloquefuncContext) {
        #warning ("TODO: ")
        // PN6 Funcion
        // Insert into dirFunc table the current quadruple counter (cont). To establish where the procedure starts
        let funcCtx = ctx.parent as! MapacheParser.FuncionContext
        let funcName = getText(from: funcCtx.ID().first!)
        functions[funcName]?.startQuadAddress = cont
    }
    
    func exitBloquefunc(_ ctx: MapacheParser.BloquefuncContext) {
        #warning ("TODO: Return")
        // PN? Funcion
        // Check if function has return, if it does, create Quad
        //let temp = ctx.expresion()
        // check if expression is same type as function
        //addQuad(.Return, temp, nil, nil)
    }
    
    func enterEstatuto(_ ctx: MapacheParser.EstatutoContext) { }
    
    func exitEstatuto(_ ctx: MapacheParser.EstatutoContext) { }
    
    func enterExpresion(_ ctx: MapacheParser.ExpresionContext) { }
    
    func exitExpresion(_ ctx: MapacheParser.ExpresionContext) { }
    
    func enterExpBool(_ ctx: MapacheParser.ExpBoolContext) { }
    
    func exitExpBool(_ ctx: MapacheParser.ExpBoolContext) { }
    
    func enterExp(_ ctx: MapacheParser.ExpContext) { }
    
    func exitExp(_ ctx: MapacheParser.ExpContext) { }
    
    func enterTermino(_ ctx: MapacheParser.TerminoContext) { }
    
    func exitTermino(_ ctx: MapacheParser.TerminoContext) { }
    
    func enterFactor(_ ctx: MapacheParser.FactorContext) { }
    
    func exitFactor(_ ctx: MapacheParser.FactorContext) { }
    
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
        jumps.push(cont)
    }
    
    func exitCicloWhile(_ ctx: MapacheParser.CicloWhileContext) {
        #warning ("TODO: ")
        // PN3 While
        let end = jumps.pop()
        let whileDir = jumps.pop()
        addQuad(.GoTo, nil, nil, whileDir)
        fillGoTo(end!, with: cont)
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
    
    func exitImprimir(_ ctx: MapacheParser.ImprimirContext) { }
    
    func enterTipo(_ ctx: MapacheParser.TipoContext) { }
    
    func exitTipo(_ ctx: MapacheParser.TipoContext) { }
    
    func enterCte(_ ctx: MapacheParser.CteContext) {
        // b c f i
        if let boolNode = ctx.CONST_B() {
            let boolText = getText(from: boolNode)
            //let boolText = getText(from: boolNode)
            //let bool = boolNode.getSymbol().getText()
            
        } else if let charNode = ctx.CONST_C() {
            let charText = getText(from: charNode)
        } else if let floatNode = ctx.CONST_F() {
            let floatText = getText(from: floatNode)
        } else if let intNode = ctx.CONST_I() {
            let intText = getText(from: intNode)
            
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
            jumps.push(cont-1)
        }
    }
    
    func exitCondicionLista(_ ctx: MapacheParser.CondicionListaContext) {
    }
    
    func enterCondicionElse(_ ctx: MapacheParser.CondicionElseContext) {
        #warning ("TODO: ")
        // PN3 If
        addQuad(.GoTo, nil, nil, nil)
        let f = jumps.pop()
        jumps.push(cont-1)
        fillGoTo(f!, with: cont)
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
    
}


// MARK: - Walker nodes
extension Wizard {
    func enterEveryRule(_ ctx: ParserRuleContext) {
        
    }
    
    func exitEveryRule(_ ctx: ParserRuleContext) { }
    
    func visitTerminal(_ node: TerminalNode) { }
    
    func visitErrorNode(_ node: ErrorNode) { }
}
