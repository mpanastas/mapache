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
    
    static let shared = Wizard()
    
    // MARK: Variables
    
    // Ops
    var semanticCube: JSON!
    
    // Quadruple
    var quadruples = [Quadruple]()
    
    // Function
    var functionsTable = [Name:Function]()
    
    
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
        // PN2 Llamada
    }
    
    func exitLlamada(_ ctx: MapacheParser.LlamadaContext) {
        #warning ("TODO: ")
        // PN5 Llamada
        // PN6 Llamada
    }
    
    func enterCondicion(_ ctx: MapacheParser.CondicionContext) { }
    
    func exitCondicion(_ ctx: MapacheParser.CondicionContext) {
        #warning ("TODO: ")
        // PN2 If
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
    }
    
    func exitFuncion(_ ctx: MapacheParser.FuncionContext) {
        #warning ("TODO: ")
        // PN7 Funcion
    }
    
    func enterBloque(_ ctx: MapacheParser.BloqueContext) { }
    
    func exitBloque(_ ctx: MapacheParser.BloqueContext) { }
    
    func enterBloquefunc(_ ctx: MapacheParser.BloquefuncContext) {
        #warning ("TODO: ")
        // PN6 Funcion
    }
    
    func exitBloquefunc(_ ctx: MapacheParser.BloquefuncContext) { }
    
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
    
    func enterCicloWhile(_ ctx: MapacheParser.CicloWhileContext) { }
    
    func exitCicloWhile(_ ctx: MapacheParser.CicloWhileContext) { }
    
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
    }
    
    func exitCondicionLista(_ ctx: MapacheParser.CondicionListaContext) {
    }
    
    func enterCondicionElse(_ ctx: MapacheParser.CondicionElseContext) {
        #warning ("TODO: ")
        // PN3 If
    }
    
    func exitCondicionElse(_ ctx: MapacheParser.CondicionElseContext) { }
    
    func enterArgumentoListo(_ ctx: MapacheParser.ArgumentoListoContext) {
        #warning ("TODO: ")
        // PN3 Llamada
    }
    
    func exitArgumentoListo(_ ctx: MapacheParser.ArgumentoListoContext) { }
    
    func enterArgumentoNuevo(_ ctx: MapacheParser.ArgumentoNuevoContext) {
        #warning ("TODO: ")
        // PN4 Llamada
    }
    
    func exitArgumentoNuevo(_ ctx: MapacheParser.ArgumentoNuevoContext) { }
    
    func enterParamNuevo(_ ctx: MapacheParser.ParamNuevoContext) {
        #warning ("TODO: ")
        // PN2 Funcion
    }
    
    func exitParamNuevo(_ ctx: MapacheParser.ParamNuevoContext) { }
    
    func enterParamListo(_ ctx: MapacheParser.ParamListoContext) {
        #warning ("TODO: ")
        // PN3 Funcion
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
