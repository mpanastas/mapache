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
        
        runCode(input: input)
        
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
}
