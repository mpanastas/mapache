//
//  ViewController.swift
//  Mapache
//
//  Created by Luis Salazar on 10/4/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import UIKit
import Antlr4

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //let lexer = MapacheLexer(ANTLRInputStream(input))
        let input = """
        mapache {

        func hi() -> Void {
            print("hi");
        }
        
        hi();
        
        }
        """
        do {
        let lexer = MapacheLexer(ANTLRInputStream(input))
        let tokens = CommonTokenStream(lexer)
        let parser = try MapacheParser(tokens)
        let tree = try parser.mapache()
        
        let walker = ParseTreeWalker()
        let extractor = MapacheWalker.init()
        try walker.walk(extractor, tree)
        
        //return tree.toStringTree(parser)
        } catch {
            
        }
        
//        let inputStream = ANTLRInputStream(input)
//        let ans = inputStream.toString()
//        print(ans)
        
        
    }
    
    
    
//    func parse(input: String) {
//        let lexer = MapacheLexer(ANTLRInputStream(input))
//        let tokens = CommonTokenStream(lexer)
//        let parser = try MapacheParser(tokens)
//        let tree = try parser.mapache()
//
//        let walker = ParseTreeWalker()
//        let extractor = TestListener.init()
//        try walker.walk(extractor, tree)
//
//        return tree.toStringTree(parser)
//    }
    
//    private func walk(input: String, walker: MapacheWalker, tree: MapacheParser throws -> ParseTree) {
//        do {
//            let lexer =  MapacheLexer(ANTLRInputStream(input))
//            let tokens =  CommonTokenStream(lexer)
//            let parser = try MapacheParser(tokens)
//
//            let theTree = try tree(parser)
//            let parseTreeWalker = ParseTreeWalker()
//            try parseTreeWalker.walk(walker, theTree)
//        } catch {
//            print("Error \(error)")
//        }
//    }
//    func x() {
//    input = FileStream(argv[1])
//    lexer = ChatLexer(input)
//    stream = CommonTokenStream(lexer)
//    parser = ChatParser(stream)
//    tree = parser.chat()
//
//    output = open("output.html","w")
//
//    htmlChat = HtmlChatListener(output)
//    walker = ParseTreeWalker()
//    walker.walk(htmlChat, tree)
//
//    output.close()
//    }


}

class MapacheWalker: MapacheBaseListener {
    override func enterEstatuto(_ ctx: MapacheParser.EstatutoContext) {
        let content = ctx.getText()
        print("Estatuto: \(content)")
    }
    
    override func enterCte(_ ctx: MapacheParser.CteContext) {
        
    }
}
