//
//  Visitor.swift
//  Mapache
//
//  Created by Luis Salazar on 10/18/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation

class Visitor<T>: MapacheVisitor<T> {
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#mapache}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitMapache(_ ctx: MapacheParser.MapacheContext) -> T {
        
        return 1 as! T
    }
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#program}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitProgram(_ ctx: MapacheParser.ProgramContext) -> T {
        return 1 as! T
    }
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#asignacion}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitAsignacion(_ ctx: MapacheParser.AsignacionContext) -> T {
        return 1 as! T
    }
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#llamada}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitLlamada(_ ctx: MapacheParser.LlamadaContext) -> T {
        return 1 as! T
    }
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#condicion}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitCondicion(_ ctx: MapacheParser.CondicionContext) -> T {
        return 1 as! T
    }
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#variable}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitVariable(_ ctx: MapacheParser.VariableContext) -> T {
        return 1 as! T
    }
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#funcion}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitFuncion(_ ctx: MapacheParser.FuncionContext) -> T {
        return 1 as! T
    }
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#bloque}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitBloque(_ ctx: MapacheParser.BloqueContext) -> T {
        return 1 as! T
    }
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#bloquefunc}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitBloquefunc(_ ctx: MapacheParser.BloquefuncContext) -> T {
        return 1 as! T
    }
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#estatuto}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitEstatuto(_ ctx: MapacheParser.EstatutoContext) -> T {
        return 1 as! T
    }
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#expresion}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitExpresion(_ ctx: MapacheParser.ExpresionContext) -> T {
        return 1 as! T
    }
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#exp}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitExp(_ ctx: MapacheParser.ExpContext) -> T {
        return 1 as! T
    }
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#termino}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitTermino(_ ctx: MapacheParser.TerminoContext) -> T {
        return 1 as! T
    }
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#factor}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitFactor(_ ctx: MapacheParser.FactorContext) -> T {
        return 1 as! T
    }
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#vector}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitVector(_ ctx: MapacheParser.VectorContext) -> T {
        return 1 as! T
    }
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#ciclo}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitCiclo(_ ctx: MapacheParser.CicloContext) -> T {
        return 1 as! T
    }
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#cicloWhile}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitCicloWhile(_ ctx: MapacheParser.CicloWhileContext) -> T {
        return 1 as! T
    }
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#cicloFor}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitCicloFor(_ ctx: MapacheParser.CicloForContext) -> T {
        return 1 as! T
    }
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#imprimir}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitImprimir(_ ctx: MapacheParser.ImprimirContext) -> T {
        return 1 as! T
    }
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#tipo}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitTipo(_ ctx: MapacheParser.TipoContext) -> T {
        return 1 as! T
    }
    
    /**
     * Visit a parse tree produced by {@link MapacheParser#cte}.
     - Parameters:
     - ctx: the parse tree
     - returns: the visitor result
     */
    override func visitCte(_ ctx: MapacheParser.CteContext) -> T {
        return 1 as! T
    }
    
}
