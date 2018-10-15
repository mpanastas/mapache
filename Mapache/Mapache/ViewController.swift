//
//  ViewController.swift
//  Mapache
//
//  Created by Luis Salazar on 10/4/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import UIKit
import Antlr4
import SwiftyJSON

class ViewController: UIViewController {
    
    var semanticCube: JSON!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let input = """
        mapache {

        func hi() -> Void {
            print("hi");
        }
        
        hi();
        
        }
        """
        setup()
        print(semanticCube["Char"]["Int"]["*"])
        
        
        runCode(input: input)
        
    }
    
    func setup(){
        
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
    
    func runCode(input: String){
        do {
            let lexer = MapacheLexer(ANTLRInputStream(input))
            let tokens = CommonTokenStream(lexer)
            let parser = try MapacheParser(tokens)
            let tree = try parser.mapache()
            
            let walker = ParseTreeWalker()
            let extractor = MapacheWalker.init()
            try walker.walk(extractor, tree)
        } catch {
            
        }
    }
    
}



class MapacheWalker: MapacheBaseListener {
    override func enterEstatuto(_ ctx: MapacheParser.EstatutoContext) {
        let content = ctx.getText()
        print("Estatuto: \(content)")
    }
    
    override func enterCte(_ ctx: MapacheParser.CteContext) {
        
    }
    
    override func enterExp(_ ctx: MapacheParser.ExpContext) {
        
    }
    
    override func enterTipo(_ ctx: MapacheParser.TipoContext) {
        
    }
    
    override func enterCiclo(_ ctx: MapacheParser.CicloContext) {
        
    }
    
    override func enterBloque(_ ctx: MapacheParser.BloqueContext) {
        
    }
    
    override func enterFactor(_ ctx: MapacheParser.FactorContext) {
        
    }
    
    override func enterVector(_ ctx: MapacheParser.VectorContext) {
        
    }
    
    override func enterFuncion(_ ctx: MapacheParser.FuncionContext) {
        
    }
    
    override func enterLlamada(_ ctx: MapacheParser.LlamadaContext) {
        
    }
    
    override func enterMapache(_ ctx: MapacheParser.MapacheContext) {
        
    }
}
