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

    override func enterMapache(_ ctx: MapacheParser.MapacheContext) {
        wizard.enterMapache(ctx)
    }

    override func exitMapache(_ ctx: MapacheParser.MapacheContext) {
        wizard.exitMapache(ctx)
    }
    
    override func enterProgram(_ ctx: MapacheParser.ProgramContext) { }

    override func exitProgram(_ ctx: MapacheParser.ProgramContext) { }
    
    override func enterAsignacion(_ ctx: MapacheParser.AsignacionContext) { }

    override func exitAsignacion(_ ctx: MapacheParser.AsignacionContext) { }
    
    override func enterLlamada(_ ctx: MapacheParser.LlamadaContext) { }

    override func exitLlamada(_ ctx: MapacheParser.LlamadaContext) { }
    
    override func enterCondicion(_ ctx: MapacheParser.CondicionContext) { }

    override func exitCondicion(_ ctx: MapacheParser.CondicionContext) { }
    
    override func enterVariable(_ ctx: MapacheParser.VariableContext) { }

    override func exitVariable(_ ctx: MapacheParser.VariableContext) { }
    
    override func enterFuncion(_ ctx: MapacheParser.FuncionContext) { }

    override func exitFuncion(_ ctx: MapacheParser.FuncionContext) { }
    
    override func enterBloque(_ ctx: MapacheParser.BloqueContext) { }

    override func exitBloque(_ ctx: MapacheParser.BloqueContext) { }
    
    override func enterBloquefunc(_ ctx: MapacheParser.BloquefuncContext) { }

    override func exitBloquefunc(_ ctx: MapacheParser.BloquefuncContext) { }
    
    override func enterEstatuto(_ ctx: MapacheParser.EstatutoContext) { }

    override func exitEstatuto(_ ctx: MapacheParser.EstatutoContext) { }
    
    override func enterExpresion(_ ctx: MapacheParser.ExpresionContext) { }
  
    override func exitExpresion(_ ctx: MapacheParser.ExpresionContext) { }
    
    override func enterExpBool(_ ctx: MapacheParser.ExpBoolContext) { }

    override func exitExpBool(_ ctx: MapacheParser.ExpBoolContext) { }
    
    override func enterExp(_ ctx: MapacheParser.ExpContext) { }

    override func exitExp(_ ctx: MapacheParser.ExpContext) { }
    
    override func enterTermino(_ ctx: MapacheParser.TerminoContext) { }

    override func exitTermino(_ ctx: MapacheParser.TerminoContext) { }
    
    override func enterFactor(_ ctx: MapacheParser.FactorContext) { }

    override func exitFactor(_ ctx: MapacheParser.FactorContext) { }
    
    override func enterVector(_ ctx: MapacheParser.VectorContext) { }

    override func exitVector(_ ctx: MapacheParser.VectorContext) { }
    
    override func enterCiclo(_ ctx: MapacheParser.CicloContext) { }

    override func exitCiclo(_ ctx: MapacheParser.CicloContext) { }
    
    override func enterCicloWhile(_ ctx: MapacheParser.CicloWhileContext) { }
 
    override func exitCicloWhile(_ ctx: MapacheParser.CicloWhileContext) { }
    
    override func enterCicloFor(_ ctx: MapacheParser.CicloForContext) { }

    override func exitCicloFor(_ ctx: MapacheParser.CicloForContext) { }
    
    override func enterImprimir(_ ctx: MapacheParser.ImprimirContext) { }

    override func exitImprimir(_ ctx: MapacheParser.ImprimirContext) { }
    
    override func enterTipo(_ ctx: MapacheParser.TipoContext) { }

    override func exitTipo(_ ctx: MapacheParser.TipoContext) { }
    
    override func enterCte(_ ctx: MapacheParser.CteContext) { }
    
    override func exitCte(_ ctx: MapacheParser.CteContext) { }
    
    override func enterCondicionLista(_ ctx: MapacheParser.CondicionListaContext) { }
    
    override func exitCondicionLista(_ ctx: MapacheParser.CondicionListaContext) { }
    
    override func enterCondicionElse(_ ctx: MapacheParser.CondicionElseContext) { }
    
    override func exitCondicionElse(_ ctx: MapacheParser.CondicionElseContext) { }
    
    override func enterArgumentoListo(_ ctx: MapacheParser.ArgumentoListoContext) { }
    
    override func exitArgumentoListo(_ ctx: MapacheParser.ArgumentoListoContext) { }
    
    override func enterArgumentoNuevo(_ ctx: MapacheParser.ArgumentoNuevoContext) { }
    
    override func exitArgumentoNuevo(_ ctx: MapacheParser.ArgumentoNuevoContext) { }
    
    override func enterParamNuevo(_ ctx: MapacheParser.ParamNuevoContext) { }
    
    override func exitParamNuevo(_ ctx: MapacheParser.ParamNuevoContext) { }
    
    override func enterParamListo(_ ctx: MapacheParser.ParamListoContext) { }
    
    override func exitParamListo(_ ctx: MapacheParser.ParamListoContext) { }
    
    override func enterForRango(_ ctx: MapacheParser.ForRangoContext) { }
    
    override func exitForRango(_ ctx: MapacheParser.ForRangoContext) { }
    
    override func enterForListo(_ ctx: MapacheParser.ForListoContext) { }
    
    override func exitForListo(_ ctx: MapacheParser.ForListoContext) { }
    
    override func enterAsignacionVector(_ ctx: MapacheParser.AsignacionVectorContext) { }
    
    override func exitAsignacionVector(_ ctx: MapacheParser.AsignacionVectorContext) { }
    
    override func enterEveryRule(_ ctx: ParserRuleContext) { }
    
    override func exitEveryRule(_ ctx: ParserRuleContext) { }
    
    override func visitTerminal(_ node: TerminalNode) { }
    
    override func visitErrorNode(_ node: ErrorNode) { }
   
}
