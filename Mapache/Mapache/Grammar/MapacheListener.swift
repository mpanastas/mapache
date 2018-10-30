// Generated from Mapache.g4 by ANTLR 4.7.1
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link MapacheParser}.
 */
public protocol MapacheListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link MapacheParser#mapache}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMapache(_ ctx: MapacheParser.MapacheContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#mapache}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMapache(_ ctx: MapacheParser.MapacheContext)
	/**
	 * Enter a parse tree produced by {@link MapacheParser#program}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProgram(_ ctx: MapacheParser.ProgramContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#program}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProgram(_ ctx: MapacheParser.ProgramContext)
	/**
	 * Enter a parse tree produced by {@link MapacheParser#asignacion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAsignacion(_ ctx: MapacheParser.AsignacionContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#asignacion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAsignacion(_ ctx: MapacheParser.AsignacionContext)
	/**
	 * Enter a parse tree produced by {@link MapacheParser#llamada}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLlamada(_ ctx: MapacheParser.LlamadaContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#llamada}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLlamada(_ ctx: MapacheParser.LlamadaContext)
	/**
	 * Enter a parse tree produced by {@link MapacheParser#condicion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCondicion(_ ctx: MapacheParser.CondicionContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#condicion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCondicion(_ ctx: MapacheParser.CondicionContext)
	/**
	 * Enter a parse tree produced by {@link MapacheParser#variable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVariable(_ ctx: MapacheParser.VariableContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#variable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVariable(_ ctx: MapacheParser.VariableContext)
	/**
	 * Enter a parse tree produced by {@link MapacheParser#funcion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFuncion(_ ctx: MapacheParser.FuncionContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#funcion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFuncion(_ ctx: MapacheParser.FuncionContext)
	/**
	 * Enter a parse tree produced by {@link MapacheParser#bloque}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBloque(_ ctx: MapacheParser.BloqueContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#bloque}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBloque(_ ctx: MapacheParser.BloqueContext)
	/**
	 * Enter a parse tree produced by {@link MapacheParser#bloquefunc}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBloquefunc(_ ctx: MapacheParser.BloquefuncContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#bloquefunc}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBloquefunc(_ ctx: MapacheParser.BloquefuncContext)
	/**
	 * Enter a parse tree produced by {@link MapacheParser#estatuto}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEstatuto(_ ctx: MapacheParser.EstatutoContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#estatuto}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEstatuto(_ ctx: MapacheParser.EstatutoContext)
	/**
	 * Enter a parse tree produced by {@link MapacheParser#expresion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpresion(_ ctx: MapacheParser.ExpresionContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#expresion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpresion(_ ctx: MapacheParser.ExpresionContext)
	/**
	 * Enter a parse tree produced by {@link MapacheParser#exp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExp(_ ctx: MapacheParser.ExpContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#exp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExp(_ ctx: MapacheParser.ExpContext)
	/**
	 * Enter a parse tree produced by {@link MapacheParser#termino}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTermino(_ ctx: MapacheParser.TerminoContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#termino}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTermino(_ ctx: MapacheParser.TerminoContext)
	/**
	 * Enter a parse tree produced by {@link MapacheParser#factor}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFactor(_ ctx: MapacheParser.FactorContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#factor}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFactor(_ ctx: MapacheParser.FactorContext)
	/**
	 * Enter a parse tree produced by {@link MapacheParser#vector}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVector(_ ctx: MapacheParser.VectorContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#vector}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVector(_ ctx: MapacheParser.VectorContext)
	/**
	 * Enter a parse tree produced by {@link MapacheParser#ciclo}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCiclo(_ ctx: MapacheParser.CicloContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#ciclo}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCiclo(_ ctx: MapacheParser.CicloContext)
	/**
	 * Enter a parse tree produced by {@link MapacheParser#cicloWhile}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCicloWhile(_ ctx: MapacheParser.CicloWhileContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#cicloWhile}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCicloWhile(_ ctx: MapacheParser.CicloWhileContext)
	/**
	 * Enter a parse tree produced by {@link MapacheParser#cicloFor}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCicloFor(_ ctx: MapacheParser.CicloForContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#cicloFor}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCicloFor(_ ctx: MapacheParser.CicloForContext)
	/**
	 * Enter a parse tree produced by {@link MapacheParser#imprimir}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterImprimir(_ ctx: MapacheParser.ImprimirContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#imprimir}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitImprimir(_ ctx: MapacheParser.ImprimirContext)
	/**
	 * Enter a parse tree produced by {@link MapacheParser#tipo}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTipo(_ ctx: MapacheParser.TipoContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#tipo}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTipo(_ ctx: MapacheParser.TipoContext)
	/**
	 * Enter a parse tree produced by {@link MapacheParser#cte}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCte(_ ctx: MapacheParser.CteContext)
	/**
	 * Exit a parse tree produced by {@link MapacheParser#cte}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCte(_ ctx: MapacheParser.CteContext)
}