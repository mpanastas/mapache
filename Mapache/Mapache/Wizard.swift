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
