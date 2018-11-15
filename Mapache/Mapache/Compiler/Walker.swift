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
    
    // MARK: - Context functions
    
    override func enterMapache(_ ctx: MapacheParser.MapacheContext) {
        wizard.enterMapache(ctx)
    }
    
    override func exitMapache(_ ctx: MapacheParser.MapacheContext) {
        wizard.exitMapache(ctx)
    }
    
    override func enterProgram(_ ctx: MapacheParser.ProgramContext) {
        wizard.enterProgram(ctx)
    }
    
    override func exitProgram(_ ctx: MapacheParser.ProgramContext) {
        wizard.exitProgram(ctx)
    }
    
    override func enterAsignacion(_ ctx: MapacheParser.AsignacionContext) {
        wizard.enterAsignacion(ctx)
    }
    
    override func exitAsignacion(_ ctx: MapacheParser.AsignacionContext) {
        wizard.exitAsignacion(ctx)
    }
    
    override func enterLlamada(_ ctx: MapacheParser.LlamadaContext) {
        wizard.enterLlamada(ctx)
    }
    
    override func exitLlamada(_ ctx: MapacheParser.LlamadaContext) {
        wizard.exitLlamada(ctx)
    }
    
    override func enterCondicion(_ ctx: MapacheParser.CondicionContext) {
        wizard.enterCondicion(ctx)
    }
    
    override func exitCondicion(_ ctx: MapacheParser.CondicionContext) {
        wizard.exitCondicion(ctx)
    }
    
    override func enterVariable(_ ctx: MapacheParser.VariableContext) {
        wizard.enterVariable(ctx)
    }
    
    override func exitVariable(_ ctx: MapacheParser.VariableContext) {
        wizard.exitVariable(ctx)
    }
    
    override func enterFuncion(_ ctx: MapacheParser.FuncionContext) {
        wizard.enterFuncion(ctx)
    }
    
    override func exitFuncion(_ ctx: MapacheParser.FuncionContext) {
        wizard.exitFuncion(ctx)
    }
    
    override func enterBloque(_ ctx: MapacheParser.BloqueContext) {
        wizard.enterBloque(ctx)
    }
    
    override func exitBloque(_ ctx: MapacheParser.BloqueContext) {
        wizard.exitBloque(ctx)
    }
    
    override func enterBloquefunc(_ ctx: MapacheParser.BloquefuncContext) {
        wizard.enterBloquefunc(ctx)
    }
    
    override func exitBloquefunc(_ ctx: MapacheParser.BloquefuncContext) {
        wizard.exitBloquefunc(ctx)
    }
    
    override func enterEstatuto(_ ctx: MapacheParser.EstatutoContext) {
        wizard.enterEstatuto(ctx)
    }
    
    override func exitEstatuto(_ ctx: MapacheParser.EstatutoContext) {
        wizard.exitEstatuto(ctx)
    }
    
    override func enterExpresion(_ ctx: MapacheParser.ExpresionContext) {
        wizard.enterExpresion(ctx)
    }
    
    override func exitExpresion(_ ctx: MapacheParser.ExpresionContext) {
        wizard.exitExpresion(ctx)
    }
    
    override func enterExpBool(_ ctx: MapacheParser.ExpBoolContext) {
        wizard.enterExpBool(ctx)
    }
    
    override func exitExpBool(_ ctx: MapacheParser.ExpBoolContext) {
        wizard.exitExpBool(ctx)
    }
    
    override func enterExp(_ ctx: MapacheParser.ExpContext) {
        wizard.enterExp(ctx)
    }
    
    override func exitExp(_ ctx: MapacheParser.ExpContext) {
        wizard.exitExp(ctx)
    }
    
    override func enterTermino(_ ctx: MapacheParser.TerminoContext) {
        wizard.enterTermino(ctx)
    }
    
    override func exitTermino(_ ctx: MapacheParser.TerminoContext) {
        wizard.exitTermino(ctx)
    }
    
    override func enterFactor(_ ctx: MapacheParser.FactorContext) {
        wizard.enterFactor(ctx)
    }
    
    override func exitFactor(_ ctx: MapacheParser.FactorContext) {
        wizard.exitFactor(ctx)
    }
    
    override func enterVector(_ ctx: MapacheParser.VectorContext) {
        wizard.enterVector(ctx)
    }
    
    override func exitVector(_ ctx: MapacheParser.VectorContext) {
        wizard.exitVector(ctx)
    }
    
    override func enterCiclo(_ ctx: MapacheParser.CicloContext) {
        wizard.enterCiclo(ctx)
    }
    
    override func exitCiclo(_ ctx: MapacheParser.CicloContext) {
        wizard.exitCiclo(ctx)
    }
    
    override func enterCicloWhile(_ ctx: MapacheParser.CicloWhileContext) {
        wizard.enterCicloWhile(ctx)
    }
    
    override func exitCicloWhile(_ ctx: MapacheParser.CicloWhileContext) {
        wizard.exitCicloWhile(ctx)
    }
    
    override func enterCicloFor(_ ctx: MapacheParser.CicloForContext) {
        wizard.enterCicloFor(ctx)
    }
    
    override func exitCicloFor(_ ctx: MapacheParser.CicloForContext) {
        wizard.exitCicloFor(ctx)
    }
    
    override func enterImprimir(_ ctx: MapacheParser.ImprimirContext) {
        wizard.enterImprimir(ctx)
    }
    
    override func exitImprimir(_ ctx: MapacheParser.ImprimirContext) {
        wizard.exitImprimir(ctx)
    }
    
    override func enterTipo(_ ctx: MapacheParser.TipoContext) {
        wizard.enterTipo(ctx)
    }
    
    override func exitTipo(_ ctx: MapacheParser.TipoContext) {
        wizard.exitTipo(ctx)
    }
    
    override func enterCte(_ ctx: MapacheParser.CteContext) {
        wizard.enterCte(ctx)
    }
    
    override func exitCte(_ ctx: MapacheParser.CteContext) {
        wizard.exitCte(ctx)
    }
    
    override func enterCondicionLista(_ ctx: MapacheParser.CondicionListaContext) {
        wizard.enterCondicionLista(ctx)
    }
    
    override func exitCondicionLista(_ ctx: MapacheParser.CondicionListaContext) {
        wizard.exitCondicionLista(ctx)
    }
    
    override func enterCondicionElse(_ ctx: MapacheParser.CondicionElseContext) {
        wizard.enterCondicionElse(ctx)
    }
    
    override func exitCondicionElse(_ ctx: MapacheParser.CondicionElseContext) {
        wizard.exitCondicionElse(ctx)
    }
    
    override func enterArgumentoListo(_ ctx: MapacheParser.ArgumentoListoContext) {
        wizard.enterArgumentoListo(ctx)
    }
    
    override func exitArgumentoListo(_ ctx: MapacheParser.ArgumentoListoContext) {
        wizard.exitArgumentoListo(ctx)
    }
    
    override func enterArgumentoNuevo(_ ctx: MapacheParser.ArgumentoNuevoContext) {
        wizard.enterArgumentoNuevo(ctx)
    }
    
    override func exitArgumentoNuevo(_ ctx: MapacheParser.ArgumentoNuevoContext) {
        wizard.exitArgumentoNuevo(ctx)
    }
    
    override func enterParamNuevo(_ ctx: MapacheParser.ParamNuevoContext) {
        wizard.enterParamNuevo(ctx)
    }
    
    override func exitParamNuevo(_ ctx: MapacheParser.ParamNuevoContext) {
        wizard.exitParamNuevo(ctx)
    }
    
    override func enterParamListo(_ ctx: MapacheParser.ParamListoContext) {
        wizard.enterParamListo(ctx)
    }
    
    override func exitParamListo(_ ctx: MapacheParser.ParamListoContext) {
        wizard.exitParamListo(ctx)
    }
    
    override func enterForRango(_ ctx: MapacheParser.ForRangoContext) {
        wizard.enterForRango(ctx)
    }
    
    override func exitForRango(_ ctx: MapacheParser.ForRangoContext) {
        wizard.exitForRango(ctx)
    }
    
    override func enterForListo(_ ctx: MapacheParser.ForListoContext) {
        wizard.enterForListo(ctx)
    }
    
    override func exitForListo(_ ctx: MapacheParser.ForListoContext) {
        wizard.exitForListo(ctx)
    }
    
    override func enterAsignacionVector(_ ctx: MapacheParser.AsignacionVectorContext) {
        wizard.enterAsignacionVector(ctx)
    }
    
    override func exitAsignacionVector(_ ctx: MapacheParser.AsignacionVectorContext) {
        wizard.exitAsignacionVector(ctx)
    }
    
    override func enterAndOr(_ ctx: MapacheParser.AndOrContext){
        wizard.enterAndOr(ctx)
    }
    
    override func enterEquality(_ ctx: MapacheParser.EqualityContext){
        wizard.enterEquality(ctx)
    }
    
    override func enterSubAdd(_ ctx: MapacheParser.SubAddContext){
        wizard.enterSubAdd(ctx)
    }
    
    override func enterMultDiv(_ ctx: MapacheParser.MultDivContext){
        wizard.enterMultDiv(ctx)
    }
    
    
    // MARK: - Nodes functions
    
    override func enterEveryRule(_ ctx: ParserRuleContext) {
        wizard.enterEveryRule(ctx)
    }
    
    override func exitEveryRule(_ ctx: ParserRuleContext) {
        wizard.exitEveryRule(ctx)
    }
    
    override func visitTerminal(_ node: TerminalNode) {
        wizard.visitTerminal(node)
    }
    
    override func visitErrorNode(_ node: ErrorNode) {
        wizard.visitErrorNode(node)
    }
    
}
