//
//  Walker.swift
//  Mapache
//
//  Created by Luis Salazar on 10/15/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation
import Antlr4

class MapacheWalker: MapacheBaseListener{
    
    
    let wizard = Wizard.shared

    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterMapache(_ ctx: MapacheParser.MapacheContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitMapache(_ ctx: MapacheParser.MapacheContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterProgram(_ ctx: MapacheParser.ProgramContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitProgram(_ ctx: MapacheParser.ProgramContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterAsignacion(_ ctx: MapacheParser.AsignacionContext) {
        let numero = ctx.expresion()
    }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitAsignacion(_ ctx: MapacheParser.AsignacionContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterLlamada(_ ctx: MapacheParser.LlamadaContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitLlamada(_ ctx: MapacheParser.LlamadaContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterCondicion(_ ctx: MapacheParser.CondicionContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitCondicion(_ ctx: MapacheParser.CondicionContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterVariable(_ ctx: MapacheParser.VariableContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitVariable(_ ctx: MapacheParser.VariableContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterFuncion(_ ctx: MapacheParser.FuncionContext) {
        //let nose = ctx
        let id = ctx.ID()
        let void = ctx.VOID()
        let type = ctx.tipo()
        print(id)
        print(void)
        print(type)
        
        
        
    }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitFuncion(_ ctx: MapacheParser.FuncionContext) {
        
    }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterBloque(_ ctx: MapacheParser.BloqueContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitBloque(_ ctx: MapacheParser.BloqueContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterBloquefunc(_ ctx: MapacheParser.BloquefuncContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitBloquefunc(_ ctx: MapacheParser.BloquefuncContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterEstatuto(_ ctx: MapacheParser.EstatutoContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitEstatuto(_ ctx: MapacheParser.EstatutoContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterExpresion(_ ctx: MapacheParser.ExpresionContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitExpresion(_ ctx: MapacheParser.ExpresionContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterExp(_ ctx: MapacheParser.ExpContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitExp(_ ctx: MapacheParser.ExpContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterTermino(_ ctx: MapacheParser.TerminoContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitTermino(_ ctx: MapacheParser.TerminoContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterFactor(_ ctx: MapacheParser.FactorContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitFactor(_ ctx: MapacheParser.FactorContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterVector(_ ctx: MapacheParser.VectorContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitVector(_ ctx: MapacheParser.VectorContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterCiclo(_ ctx: MapacheParser.CicloContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitCiclo(_ ctx: MapacheParser.CicloContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterCicloWhile(_ ctx: MapacheParser.CicloWhileContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitCicloWhile(_ ctx: MapacheParser.CicloWhileContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterCicloFor(_ ctx: MapacheParser.CicloForContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitCicloFor(_ ctx: MapacheParser.CicloForContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterImprimir(_ ctx: MapacheParser.ImprimirContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitImprimir(_ ctx: MapacheParser.ImprimirContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterTipo(_ ctx: MapacheParser.TipoContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitTipo(_ ctx: MapacheParser.TipoContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterCte(_ ctx: MapacheParser.CteContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitCte(_ ctx: MapacheParser.CteContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterCondicionLista(_ ctx: MapacheParser.CondicionListaContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitCondicionLista(_ ctx: MapacheParser.CondicionListaContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterCondicionTermina(_ ctx: MapacheParser.CondicionTerminaContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitCondicionTermina(_ ctx: MapacheParser.CondicionTerminaContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterCondicionElse(_ ctx: MapacheParser.CondicionElseContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitCondicionElse(_ ctx: MapacheParser.CondicionElseContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterCicloInicia(_ ctx: MapacheParser.CicloIniciaContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitCicloInicia(_ ctx: MapacheParser.CicloIniciaContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterCicloTermina(_ ctx: MapacheParser.CicloTerminaContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitCicloTermina(_ ctx: MapacheParser.CicloTerminaContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func enterEveryRule(_ ctx: ParserRuleContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func exitEveryRule(_ ctx: ParserRuleContext) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func visitTerminal(_ node: TerminalNode) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    override func visitErrorNode(_ node: ErrorNode) { }
   
}
