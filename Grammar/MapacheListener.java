// Generated from Mapache.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link MapacheParser}.
 */
public interface MapacheListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link MapacheParser#mapache}.
	 * @param ctx the parse tree
	 */
	void enterMapache(MapacheParser.MapacheContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#mapache}.
	 * @param ctx the parse tree
	 */
	void exitMapache(MapacheParser.MapacheContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(MapacheParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(MapacheParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#asignacion}.
	 * @param ctx the parse tree
	 */
	void enterAsignacion(MapacheParser.AsignacionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#asignacion}.
	 * @param ctx the parse tree
	 */
	void exitAsignacion(MapacheParser.AsignacionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#llamada}.
	 * @param ctx the parse tree
	 */
	void enterLlamada(MapacheParser.LlamadaContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#llamada}.
	 * @param ctx the parse tree
	 */
	void exitLlamada(MapacheParser.LlamadaContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#condicion}.
	 * @param ctx the parse tree
	 */
	void enterCondicion(MapacheParser.CondicionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#condicion}.
	 * @param ctx the parse tree
	 */
	void exitCondicion(MapacheParser.CondicionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#variable}.
	 * @param ctx the parse tree
	 */
	void enterVariable(MapacheParser.VariableContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#variable}.
	 * @param ctx the parse tree
	 */
	void exitVariable(MapacheParser.VariableContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#funcion}.
	 * @param ctx the parse tree
	 */
	void enterFuncion(MapacheParser.FuncionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#funcion}.
	 * @param ctx the parse tree
	 */
	void exitFuncion(MapacheParser.FuncionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#bloque}.
	 * @param ctx the parse tree
	 */
	void enterBloque(MapacheParser.BloqueContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#bloque}.
	 * @param ctx the parse tree
	 */
	void exitBloque(MapacheParser.BloqueContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#bloquefunc}.
	 * @param ctx the parse tree
	 */
	void enterBloquefunc(MapacheParser.BloquefuncContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#bloquefunc}.
	 * @param ctx the parse tree
	 */
	void exitBloquefunc(MapacheParser.BloquefuncContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#estatuto}.
	 * @param ctx the parse tree
	 */
	void enterEstatuto(MapacheParser.EstatutoContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#estatuto}.
	 * @param ctx the parse tree
	 */
	void exitEstatuto(MapacheParser.EstatutoContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#expresion}.
	 * @param ctx the parse tree
	 */
	void enterExpresion(MapacheParser.ExpresionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#expresion}.
	 * @param ctx the parse tree
	 */
	void exitExpresion(MapacheParser.ExpresionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#expBool}.
	 * @param ctx the parse tree
	 */
	void enterExpBool(MapacheParser.ExpBoolContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#expBool}.
	 * @param ctx the parse tree
	 */
	void exitExpBool(MapacheParser.ExpBoolContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#exp}.
	 * @param ctx the parse tree
	 */
	void enterExp(MapacheParser.ExpContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#exp}.
	 * @param ctx the parse tree
	 */
	void exitExp(MapacheParser.ExpContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#termino}.
	 * @param ctx the parse tree
	 */
	void enterTermino(MapacheParser.TerminoContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#termino}.
	 * @param ctx the parse tree
	 */
	void exitTermino(MapacheParser.TerminoContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#factor}.
	 * @param ctx the parse tree
	 */
	void enterFactor(MapacheParser.FactorContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#factor}.
	 * @param ctx the parse tree
	 */
	void exitFactor(MapacheParser.FactorContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#vector}.
	 * @param ctx the parse tree
	 */
	void enterVector(MapacheParser.VectorContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#vector}.
	 * @param ctx the parse tree
	 */
	void exitVector(MapacheParser.VectorContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#ciclo}.
	 * @param ctx the parse tree
	 */
	void enterCiclo(MapacheParser.CicloContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#ciclo}.
	 * @param ctx the parse tree
	 */
	void exitCiclo(MapacheParser.CicloContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#cicloWhile}.
	 * @param ctx the parse tree
	 */
	void enterCicloWhile(MapacheParser.CicloWhileContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#cicloWhile}.
	 * @param ctx the parse tree
	 */
	void exitCicloWhile(MapacheParser.CicloWhileContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#cicloFor}.
	 * @param ctx the parse tree
	 */
	void enterCicloFor(MapacheParser.CicloForContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#cicloFor}.
	 * @param ctx the parse tree
	 */
	void exitCicloFor(MapacheParser.CicloForContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#imprimir}.
	 * @param ctx the parse tree
	 */
	void enterImprimir(MapacheParser.ImprimirContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#imprimir}.
	 * @param ctx the parse tree
	 */
	void exitImprimir(MapacheParser.ImprimirContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#tipo}.
	 * @param ctx the parse tree
	 */
	void enterTipo(MapacheParser.TipoContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#tipo}.
	 * @param ctx the parse tree
	 */
	void exitTipo(MapacheParser.TipoContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#cte}.
	 * @param ctx the parse tree
	 */
	void enterCte(MapacheParser.CteContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#cte}.
	 * @param ctx the parse tree
	 */
	void exitCte(MapacheParser.CteContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#condicionLista}.
	 * @param ctx the parse tree
	 */
	void enterCondicionLista(MapacheParser.CondicionListaContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#condicionLista}.
	 * @param ctx the parse tree
	 */
	void exitCondicionLista(MapacheParser.CondicionListaContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#condicionElse}.
	 * @param ctx the parse tree
	 */
	void enterCondicionElse(MapacheParser.CondicionElseContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#condicionElse}.
	 * @param ctx the parse tree
	 */
	void exitCondicionElse(MapacheParser.CondicionElseContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#argumentoListo}.
	 * @param ctx the parse tree
	 */
	void enterArgumentoListo(MapacheParser.ArgumentoListoContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#argumentoListo}.
	 * @param ctx the parse tree
	 */
	void exitArgumentoListo(MapacheParser.ArgumentoListoContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#argumentoNuevo}.
	 * @param ctx the parse tree
	 */
	void enterArgumentoNuevo(MapacheParser.ArgumentoNuevoContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#argumentoNuevo}.
	 * @param ctx the parse tree
	 */
	void exitArgumentoNuevo(MapacheParser.ArgumentoNuevoContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#paramNuevo}.
	 * @param ctx the parse tree
	 */
	void enterParamNuevo(MapacheParser.ParamNuevoContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#paramNuevo}.
	 * @param ctx the parse tree
	 */
	void exitParamNuevo(MapacheParser.ParamNuevoContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#paramListo}.
	 * @param ctx the parse tree
	 */
	void enterParamListo(MapacheParser.ParamListoContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#paramListo}.
	 * @param ctx the parse tree
	 */
	void exitParamListo(MapacheParser.ParamListoContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#forRango}.
	 * @param ctx the parse tree
	 */
	void enterForRango(MapacheParser.ForRangoContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#forRango}.
	 * @param ctx the parse tree
	 */
	void exitForRango(MapacheParser.ForRangoContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#forListo}.
	 * @param ctx the parse tree
	 */
	void enterForListo(MapacheParser.ForListoContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#forListo}.
	 * @param ctx the parse tree
	 */
	void exitForListo(MapacheParser.ForListoContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapacheParser#asignacionVector}.
	 * @param ctx the parse tree
	 */
	void enterAsignacionVector(MapacheParser.AsignacionVectorContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapacheParser#asignacionVector}.
	 * @param ctx the parse tree
	 */
	void exitAsignacionVector(MapacheParser.AsignacionVectorContext ctx);
}