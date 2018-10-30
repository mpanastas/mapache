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


extension Wizard {
    func enterMapache(_ ctx: MapacheParser.MapacheContext) {
        
    }
    
    func exitMapache(_ ctx: MapacheParser.MapacheContext) {
        
    }
    
    func enterProgram(_ ctx: MapacheParser.ProgramContext) { }
    
    func exitProgram(_ ctx: MapacheParser.ProgramContext) { }
    
    func enterAsignacion(_ ctx: MapacheParser.AsignacionContext) {
        
        
    }
    
    func exitAsignacion(_ ctx: MapacheParser.AsignacionContext) { }
    
    func enterLlamada(_ ctx: MapacheParser.LlamadaContext) { }
    
    func exitLlamada(_ ctx: MapacheParser.LlamadaContext) { }
    
    func enterCondicion(_ ctx: MapacheParser.CondicionContext) { }
    
    func exitCondicion(_ ctx: MapacheParser.CondicionContext) { }
    
    func enterVariable(_ ctx: MapacheParser.VariableContext) {
        
    }
    
    func exitVariable(_ ctx: MapacheParser.VariableContext) { }
    
    func enterFuncion(_ ctx: MapacheParser.FuncionContext) {
        
    }
    
    func exitFuncion(_ ctx: MapacheParser.FuncionContext) { }
    
    func enterBloque(_ ctx: MapacheParser.BloqueContext) { }
    
    func exitBloque(_ ctx: MapacheParser.BloqueContext) { }
    
    func enterBloquefunc(_ ctx: MapacheParser.BloquefuncContext) { }
    
    func exitBloquefunc(_ ctx: MapacheParser.BloquefuncContext) { }
    
    func enterEstatuto(_ ctx: MapacheParser.EstatutoContext) {
        let content = ctx.getText()
        print("Estatuto: \(content)")
        
    }
    
    func exitEstatuto(_ ctx: MapacheParser.EstatutoContext) { }
    
    func enterExpresion(_ ctx: MapacheParser.ExpresionContext) { }
    
    func exitExpresion(_ ctx: MapacheParser.ExpresionContext) { }
    
    func enterExp(_ ctx: MapacheParser.ExpContext) { }
    
    func exitExp(_ ctx: MapacheParser.ExpContext) { }
    
    func enterTermino(_ ctx: MapacheParser.TerminoContext) { }
    
    func exitTermino(_ ctx: MapacheParser.TerminoContext) { }
    
    func enterFactor(_ ctx: MapacheParser.FactorContext) { }
    
    func exitFactor(_ ctx: MapacheParser.FactorContext) { }
    
    func enterVector(_ ctx: MapacheParser.VectorContext) { }
    
    func exitVector(_ ctx: MapacheParser.VectorContext) { }
    
    func enterCiclo(_ ctx: MapacheParser.CicloContext) { }
    
    func exitCiclo(_ ctx: MapacheParser.CicloContext) { }
    
    func enterCicloWhile(_ ctx: MapacheParser.CicloWhileContext) { }
    
    func exitCicloWhile(_ ctx: MapacheParser.CicloWhileContext) { }
    
    func enterCicloFor(_ ctx: MapacheParser.CicloForContext) { }
    
    func exitCicloFor(_ ctx: MapacheParser.CicloForContext) { }
    
    func enterImprimir(_ ctx: MapacheParser.ImprimirContext) { }
    
    func exitImprimir(_ ctx: MapacheParser.ImprimirContext) { }
    
    func enterTipo(_ ctx: MapacheParser.TipoContext) { }
    
    func exitTipo(_ ctx: MapacheParser.TipoContext) { }
    
    func enterCte(_ ctx: MapacheParser.CteContext) { }
    
    func exitCte(_ ctx: MapacheParser.CteContext) { }
    
    
    func visitTerminal(_ node: TerminalNode) {
        
        
        
        
    }
    
    func visitErrorNode(_ node: ErrorNode) {
        
    }
}
