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
}

class Wizard{
    
    // Singletone
    static let shared = Wizard()
    
    // MARK: Variables
    
    // Ops
    var semanticCube: JSON!
    
    // Quadruple
    var quadruples = [Quadruple]()
    
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
    
    func runCode(input: String){
        do {
            let lexer = MapacheLexer(ANTLRInputStream(input))
            let tokens = CommonTokenStream(lexer)
            let parser = try MapacheParser(tokens)
            let tree = try parser.mapache()
            
            let walker = ParseTreeWalker()
            let extractor = MapacheWalker.init()
            try walker.walk(extractor, tree)
            
            //print(semanticCube["Float"]["Int"]["*"])
        } catch {
            print("parse error: \(error.localizedDescription)")
        }
    }
    
    // MARK: Manage Quadruples
    func addQuad(_ op: Op, _ opL: Int?, _ opR: Int?, _ temp: Int?){
        let quad = Quadruple(op, opL, opR, temp)
        quadruples.append(quad)
    }
    
    func fillDirection(_ num1: Int, with num2: Int) {
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
        fillDirection(end!, with: cont)
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
        // Insert func name intro the dirFuncTable, verify semantics
        let funcName = ctx.ID()
        print("Func name: ", funcName)
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
        fillDirection(end!, with: cont)
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
    
    func enterCte(_ ctx: MapacheParser.CteContext) { }
    
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
        fillDirection(f!, with: cont)
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
    
    func enterParamNuevo(_ ctx: MapacheParser.ParamNuevoContext) {
        #warning ("TODO: ")
        // PN2 Funcion
        // Insert parameter into the current (local) varTable
        
        //let parent = ctx.parent as! MapacheParser.FuncionContext
        //let param = parent.
        
    }
    
    func exitParamNuevo(_ ctx: MapacheParser.ParamNuevoContext) { }
    
    func enterParamListo(_ ctx: MapacheParser.ParamListoContext) {
        #warning ("TODO: ")
        // PN3 Funcion
        // Insert the type to every parameter uploaded into the varTable.
        // At the same time into the parameterTable (to create the function's signature)
        
    }
    
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
        // Checar si es vector
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
