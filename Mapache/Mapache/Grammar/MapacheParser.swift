// Generated from Mapache.g4 by ANTLR 4.7.1
import Antlr4

open class MapacheParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = MapacheParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(MapacheParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, MAPACHE = 1, INT = 2, CHAR = 3, FLOAT = 4, BOOL = 5, VOID = 6, 
                 FUNC = 7, RETURN = 8, VAR = 9, PRINT = 10, IF = 11, ELSE = 12, 
                 WHILE = 13, FOR = 14, IN = 15, DOTS = 16, BY = 17, PLUS = 18, 
                 MINUS = 19, MULTIPLY = 20, DIVISION = 21, ASSIGN = 22, 
                 EQUAL = 23, NOT = 24, NOT_EQUAL = 25, LESS_THAN = 26, GREATER_THAN = 27, 
                 AND = 28, OR = 29, OPEN_BRACKET = 30, CLOSE_BRACKET = 31, 
                 OPEN_PAREN = 32, CLOSE_PAREN = 33, OPEN_CURLY = 34, CLOSE_CURLY = 35, 
                 COMMA = 36, COLON = 37, DOT = 38, SEMICOLON = 39, ARROW = 40, 
                 TRUE = 41, FALSE = 42, TEXT = 43, CONST_I = 44, CONST_F = 45, 
                 CONST_B = 46, CONST_C = 47, ID = 48, WS = 49
	}

	public
	static let RULE_mapache = 0, RULE_program = 1, RULE_asignacion = 2, RULE_llamada = 3, 
            RULE_condicion = 4, RULE_variable = 5, RULE_funcion = 6, RULE_bloque = 7, 
            RULE_bloquefunc = 8, RULE_estatuto = 9, RULE_expresion = 10, 
            RULE_expBool = 11, RULE_exp = 12, RULE_termino = 13, RULE_factor = 14, 
            RULE_vector = 15, RULE_ciclo = 16, RULE_cicloWhile = 17, RULE_cicloFor = 18, 
            RULE_imprimir = 19, RULE_tipo = 20, RULE_cte = 21, RULE_condicionLista = 22, 
            RULE_condicionElse = 23, RULE_argumentoListo = 24, RULE_argumentoNuevo = 25, 
            RULE_paramNuevo = 26, RULE_paramListo = 27, RULE_forRango = 28, 
            RULE_forListo = 29, RULE_asignacionVector = 30

	public
	static let ruleNames: [String] = [
		"mapache", "program", "asignacion", "llamada", "condicion", "variable", 
		"funcion", "bloque", "bloquefunc", "estatuto", "expresion", "expBool", 
		"exp", "termino", "factor", "vector", "ciclo", "cicloWhile", "cicloFor", 
		"imprimir", "tipo", "cte", "condicionLista", "condicionElse", "argumentoListo", 
		"argumentoNuevo", "paramNuevo", "paramListo", "forRango", "forListo", 
		"asignacionVector"
	]

	private static let _LITERAL_NAMES: [String?] = [
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "MAPACHE", "INT", "CHAR", "FLOAT", "BOOL", "VOID", "FUNC", "RETURN", 
		"VAR", "PRINT", "IF", "ELSE", "WHILE", "FOR", "IN", "DOTS", "BY", "PLUS", 
		"MINUS", "MULTIPLY", "DIVISION", "ASSIGN", "EQUAL", "NOT", "NOT_EQUAL", 
		"LESS_THAN", "GREATER_THAN", "AND", "OR", "OPEN_BRACKET", "CLOSE_BRACKET", 
		"OPEN_PAREN", "CLOSE_PAREN", "OPEN_CURLY", "CLOSE_CURLY", "COMMA", "COLON", 
		"DOT", "SEMICOLON", "ARROW", "TRUE", "FALSE", "TEXT", "CONST_I", "CONST_F", 
		"CONST_B", "CONST_C", "ID", "WS"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	override open
	func getGrammarFileName() -> String { return "Mapache.g4" }

	override open
	func getRuleNames() -> [String] { return MapacheParser.ruleNames }

	override open
	func getSerializedATN() -> String { return MapacheParser._serializedATN }

	override open
	func getATN() -> ATN { return MapacheParser._ATN }

	override open
	func getVocabulary() -> Vocabulary {
	    return MapacheParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.7.1", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,MapacheParser._ATN,MapacheParser._decisionToDFA, MapacheParser._sharedContextCache)
	}

	public class MapacheContext: ParserRuleContext {
			open
			func EOF() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.EOF.rawValue, 0)
			}
			open
			func program() -> [ProgramContext] {
				return getRuleContexts(ProgramContext.self)
			}
			open
			func program(_ i: Int) -> ProgramContext? {
				return getRuleContext(ProgramContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_mapache
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterMapache(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitMapache(self)
			}
		}
	}
	@discardableResult
	 open func mapache() throws -> MapacheContext {
		var _localctx: MapacheContext = MapacheContext(_ctx, getState())
		try enterRule(_localctx, 0, MapacheParser.RULE_mapache)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(63) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(62)
		 		try program()


		 		setState(65); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == MapacheParser.Tokens.MAPACHE.rawValue
		 	      return testSet
		 	 }())
		 	setState(67)
		 	try match(MapacheParser.Tokens.EOF.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ProgramContext: ParserRuleContext {
			open
			func MAPACHE() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.MAPACHE.rawValue, 0)
			}
			open
			func bloque() -> BloqueContext? {
				return getRuleContext(BloqueContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_program
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterProgram(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitProgram(self)
			}
		}
	}
	@discardableResult
	 open func program() throws -> ProgramContext {
		var _localctx: ProgramContext = ProgramContext(_ctx, getState())
		try enterRule(_localctx, 2, MapacheParser.RULE_program)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(69)
		 	try match(MapacheParser.Tokens.MAPACHE.rawValue)
		 	setState(70)
		 	try bloque()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class AsignacionContext: ParserRuleContext {
			open
			func ID() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.ID.rawValue, 0)
			}
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.ASSIGN.rawValue, 0)
			}
			open
			func expresion() -> ExpresionContext? {
				return getRuleContext(ExpresionContext.self, 0)
			}
			open
			func SEMICOLON() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.SEMICOLON.rawValue, 0)
			}
			open
			func OPEN_BRACKET() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.OPEN_BRACKET.rawValue, 0)
			}
			open
			func exp() -> ExpContext? {
				return getRuleContext(ExpContext.self, 0)
			}
			open
			func CLOSE_BRACKET() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.CLOSE_BRACKET.rawValue, 0)
			}
			open
			func asignacionVector() -> AsignacionVectorContext? {
				return getRuleContext(AsignacionVectorContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_asignacion
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterAsignacion(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitAsignacion(self)
			}
		}
	}
	@discardableResult
	 open func asignacion() throws -> AsignacionContext {
		var _localctx: AsignacionContext = AsignacionContext(_ctx, getState())
		try enterRule(_localctx, 4, MapacheParser.RULE_asignacion)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(72)
		 	try match(MapacheParser.Tokens.ID.rawValue)
		 	setState(78)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == MapacheParser.Tokens.OPEN_BRACKET.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(73)
		 		try match(MapacheParser.Tokens.OPEN_BRACKET.rawValue)
		 		setState(74)
		 		try exp()
		 		setState(75)
		 		try match(MapacheParser.Tokens.CLOSE_BRACKET.rawValue)
		 		setState(76)
		 		try asignacionVector()

		 	}

		 	setState(80)
		 	try match(MapacheParser.Tokens.ASSIGN.rawValue)
		 	setState(81)
		 	try expresion()
		 	setState(82)
		 	try match(MapacheParser.Tokens.SEMICOLON.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class LlamadaContext: ParserRuleContext {
			open
			func ID() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.ID.rawValue, 0)
			}
			open
			func OPEN_PAREN() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.OPEN_PAREN.rawValue, 0)
			}
			open
			func CLOSE_PAREN() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.CLOSE_PAREN.rawValue, 0)
			}
			open
			func expresion() -> [ExpresionContext] {
				return getRuleContexts(ExpresionContext.self)
			}
			open
			func expresion(_ i: Int) -> ExpresionContext? {
				return getRuleContext(ExpresionContext.self, i)
			}
			open
			func argumentoListo() -> [ArgumentoListoContext] {
				return getRuleContexts(ArgumentoListoContext.self)
			}
			open
			func argumentoListo(_ i: Int) -> ArgumentoListoContext? {
				return getRuleContext(ArgumentoListoContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(MapacheParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(MapacheParser.Tokens.COMMA.rawValue, i)
			}
			open
			func argumentoNuevo() -> [ArgumentoNuevoContext] {
				return getRuleContexts(ArgumentoNuevoContext.self)
			}
			open
			func argumentoNuevo(_ i: Int) -> ArgumentoNuevoContext? {
				return getRuleContext(ArgumentoNuevoContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_llamada
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterLlamada(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitLlamada(self)
			}
		}
	}
	@discardableResult
	 open func llamada() throws -> LlamadaContext {
		var _localctx: LlamadaContext = LlamadaContext(_ctx, getState())
		try enterRule(_localctx, 6, MapacheParser.RULE_llamada)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(84)
		 	try match(MapacheParser.Tokens.ID.rawValue)
		 	setState(85)
		 	try match(MapacheParser.Tokens.OPEN_PAREN.rawValue)
		 	setState(98)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, MapacheParser.Tokens.MINUS.rawValue,MapacheParser.Tokens.OPEN_PAREN.rawValue,MapacheParser.Tokens.CONST_I.rawValue,MapacheParser.Tokens.CONST_F.rawValue,MapacheParser.Tokens.CONST_B.rawValue,MapacheParser.Tokens.CONST_C.rawValue,MapacheParser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(86)
		 		try expresion()
		 		setState(87)
		 		try argumentoListo()
		 		setState(95)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == MapacheParser.Tokens.COMMA.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(88)
		 			try match(MapacheParser.Tokens.COMMA.rawValue)
		 			setState(89)
		 			try argumentoNuevo()
		 			setState(90)
		 			try expresion()
		 			setState(91)
		 			try argumentoListo()


		 			setState(97)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}

		 	}

		 	setState(100)
		 	try match(MapacheParser.Tokens.CLOSE_PAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class CondicionContext: ParserRuleContext {
			open
			func IF() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.IF.rawValue, 0)
			}
			open
			func OPEN_PAREN() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.OPEN_PAREN.rawValue, 0)
			}
			open
			func expresion() -> ExpresionContext? {
				return getRuleContext(ExpresionContext.self, 0)
			}
			open
			func CLOSE_PAREN() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.CLOSE_PAREN.rawValue, 0)
			}
			open
			func condicionLista() -> CondicionListaContext? {
				return getRuleContext(CondicionListaContext.self, 0)
			}
			open
			func bloque() -> [BloqueContext] {
				return getRuleContexts(BloqueContext.self)
			}
			open
			func bloque(_ i: Int) -> BloqueContext? {
				return getRuleContext(BloqueContext.self, i)
			}
			open
			func ELSE() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.ELSE.rawValue, 0)
			}
			open
			func condicionElse() -> CondicionElseContext? {
				return getRuleContext(CondicionElseContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_condicion
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterCondicion(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitCondicion(self)
			}
		}
	}
	@discardableResult
	 open func condicion() throws -> CondicionContext {
		var _localctx: CondicionContext = CondicionContext(_ctx, getState())
		try enterRule(_localctx, 8, MapacheParser.RULE_condicion)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(102)
		 	try match(MapacheParser.Tokens.IF.rawValue)
		 	setState(103)
		 	try match(MapacheParser.Tokens.OPEN_PAREN.rawValue)
		 	setState(104)
		 	try expresion()
		 	setState(105)
		 	try match(MapacheParser.Tokens.CLOSE_PAREN.rawValue)
		 	setState(106)
		 	try condicionLista()
		 	setState(107)
		 	try bloque()
		 	setState(112)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == MapacheParser.Tokens.ELSE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(108)
		 		try match(MapacheParser.Tokens.ELSE.rawValue)
		 		setState(109)
		 		try condicionElse()
		 		setState(110)
		 		try bloque()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VariableContext: ParserRuleContext {
			open
			func VAR() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.VAR.rawValue, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.ID.rawValue, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.COLON.rawValue, 0)
			}
			open
			func tipo() -> TipoContext? {
				return getRuleContext(TipoContext.self, 0)
			}
			open
			func SEMICOLON() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.SEMICOLON.rawValue, 0)
			}
			open
			func OPEN_BRACKET() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.OPEN_BRACKET.rawValue, 0)
			}
			open
			func CONST_I() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.CONST_I.rawValue, 0)
			}
			open
			func CLOSE_BRACKET() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.CLOSE_BRACKET.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_variable
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterVariable(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitVariable(self)
			}
		}
	}
	@discardableResult
	 open func variable() throws -> VariableContext {
		var _localctx: VariableContext = VariableContext(_ctx, getState())
		try enterRule(_localctx, 10, MapacheParser.RULE_variable)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(114)
		 	try match(MapacheParser.Tokens.VAR.rawValue)
		 	setState(115)
		 	try match(MapacheParser.Tokens.ID.rawValue)
		 	setState(119)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == MapacheParser.Tokens.OPEN_BRACKET.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(116)
		 		try match(MapacheParser.Tokens.OPEN_BRACKET.rawValue)
		 		setState(117)
		 		try match(MapacheParser.Tokens.CONST_I.rawValue)
		 		setState(118)
		 		try match(MapacheParser.Tokens.CLOSE_BRACKET.rawValue)

		 	}

		 	setState(121)
		 	try match(MapacheParser.Tokens.COLON.rawValue)
		 	setState(122)
		 	try tipo()
		 	setState(123)
		 	try match(MapacheParser.Tokens.SEMICOLON.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FuncionContext: ParserRuleContext {
			open
			func FUNC() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.FUNC.rawValue, 0)
			}
			open
			func ID() -> [TerminalNode] {
				return getTokens(MapacheParser.Tokens.ID.rawValue)
			}
			open
			func ID(_ i:Int) -> TerminalNode? {
				return getToken(MapacheParser.Tokens.ID.rawValue, i)
			}
			open
			func OPEN_PAREN() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.OPEN_PAREN.rawValue, 0)
			}
			open
			func CLOSE_PAREN() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.CLOSE_PAREN.rawValue, 0)
			}
			open
			func ARROW() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.ARROW.rawValue, 0)
			}
			open
			func bloquefunc() -> BloquefuncContext? {
				return getRuleContext(BloquefuncContext.self, 0)
			}
			open
			func VOID() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.VOID.rawValue, 0)
			}
			open
			func tipo() -> [TipoContext] {
				return getRuleContexts(TipoContext.self)
			}
			open
			func tipo(_ i: Int) -> TipoContext? {
				return getRuleContext(TipoContext.self, i)
			}
			open
			func paramNuevo() -> [ParamNuevoContext] {
				return getRuleContexts(ParamNuevoContext.self)
			}
			open
			func paramNuevo(_ i: Int) -> ParamNuevoContext? {
				return getRuleContext(ParamNuevoContext.self, i)
			}
			open
			func COLON() -> [TerminalNode] {
				return getTokens(MapacheParser.Tokens.COLON.rawValue)
			}
			open
			func COLON(_ i:Int) -> TerminalNode? {
				return getToken(MapacheParser.Tokens.COLON.rawValue, i)
			}
			open
			func paramListo() -> [ParamListoContext] {
				return getRuleContexts(ParamListoContext.self)
			}
			open
			func paramListo(_ i: Int) -> ParamListoContext? {
				return getRuleContext(ParamListoContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(MapacheParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(MapacheParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_funcion
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterFuncion(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitFuncion(self)
			}
		}
	}
	@discardableResult
	 open func funcion() throws -> FuncionContext {
		var _localctx: FuncionContext = FuncionContext(_ctx, getState())
		try enterRule(_localctx, 12, MapacheParser.RULE_funcion)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(125)
		 	try match(MapacheParser.Tokens.FUNC.rawValue)
		 	setState(126)
		 	try match(MapacheParser.Tokens.ID.rawValue)
		 	setState(127)
		 	try match(MapacheParser.Tokens.OPEN_PAREN.rawValue)
		 	setState(145)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == MapacheParser.Tokens.ID.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(128)
		 		try match(MapacheParser.Tokens.ID.rawValue)
		 		setState(129)
		 		try paramNuevo()
		 		setState(130)
		 		try match(MapacheParser.Tokens.COLON.rawValue)
		 		setState(131)
		 		try tipo()
		 		setState(132)
		 		try paramListo()
		 		setState(142)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == MapacheParser.Tokens.COMMA.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(133)
		 			try match(MapacheParser.Tokens.COMMA.rawValue)
		 			setState(134)
		 			try match(MapacheParser.Tokens.ID.rawValue)
		 			setState(135)
		 			try paramNuevo()
		 			setState(136)
		 			try match(MapacheParser.Tokens.COLON.rawValue)
		 			setState(137)
		 			try tipo()
		 			setState(138)
		 			try paramListo()


		 			setState(144)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}

		 	}

		 	setState(147)
		 	try match(MapacheParser.Tokens.CLOSE_PAREN.rawValue)
		 	setState(148)
		 	try match(MapacheParser.Tokens.ARROW.rawValue)
		 	setState(151)
		 	try _errHandler.sync(self)
		 	switch (MapacheParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .VOID:
		 		setState(149)
		 		try match(MapacheParser.Tokens.VOID.rawValue)

		 		break
		 	case .INT:fallthrough
		 	case .CHAR:fallthrough
		 	case .FLOAT:fallthrough
		 	case .BOOL:
		 		setState(150)
		 		try tipo()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		 	setState(153)
		 	try bloquefunc()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BloqueContext: ParserRuleContext {
			open
			func OPEN_CURLY() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.OPEN_CURLY.rawValue, 0)
			}
			open
			func CLOSE_CURLY() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.CLOSE_CURLY.rawValue, 0)
			}
			open
			func estatuto() -> [EstatutoContext] {
				return getRuleContexts(EstatutoContext.self)
			}
			open
			func estatuto(_ i: Int) -> EstatutoContext? {
				return getRuleContext(EstatutoContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_bloque
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterBloque(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitBloque(self)
			}
		}
	}
	@discardableResult
	 open func bloque() throws -> BloqueContext {
		var _localctx: BloqueContext = BloqueContext(_ctx, getState())
		try enterRule(_localctx, 14, MapacheParser.RULE_bloque)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(155)
		 	try match(MapacheParser.Tokens.OPEN_CURLY.rawValue)
		 	setState(159)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, MapacheParser.Tokens.FUNC.rawValue,MapacheParser.Tokens.VAR.rawValue,MapacheParser.Tokens.PRINT.rawValue,MapacheParser.Tokens.IF.rawValue,MapacheParser.Tokens.WHILE.rawValue,MapacheParser.Tokens.FOR.rawValue,MapacheParser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(156)
		 		try estatuto()


		 		setState(161)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(162)
		 	try match(MapacheParser.Tokens.CLOSE_CURLY.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BloquefuncContext: ParserRuleContext {
			open
			func OPEN_CURLY() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.OPEN_CURLY.rawValue, 0)
			}
			open
			func CLOSE_CURLY() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.CLOSE_CURLY.rawValue, 0)
			}
			open
			func estatuto() -> [EstatutoContext] {
				return getRuleContexts(EstatutoContext.self)
			}
			open
			func estatuto(_ i: Int) -> EstatutoContext? {
				return getRuleContext(EstatutoContext.self, i)
			}
			open
			func RETURN() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.RETURN.rawValue, 0)
			}
			open
			func expresion() -> ExpresionContext? {
				return getRuleContext(ExpresionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_bloquefunc
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterBloquefunc(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitBloquefunc(self)
			}
		}
	}
	@discardableResult
	 open func bloquefunc() throws -> BloquefuncContext {
		var _localctx: BloquefuncContext = BloquefuncContext(_ctx, getState())
		try enterRule(_localctx, 16, MapacheParser.RULE_bloquefunc)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(164)
		 	try match(MapacheParser.Tokens.OPEN_CURLY.rawValue)
		 	setState(168)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, MapacheParser.Tokens.FUNC.rawValue,MapacheParser.Tokens.VAR.rawValue,MapacheParser.Tokens.PRINT.rawValue,MapacheParser.Tokens.IF.rawValue,MapacheParser.Tokens.WHILE.rawValue,MapacheParser.Tokens.FOR.rawValue,MapacheParser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(165)
		 		try estatuto()


		 		setState(170)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(173)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == MapacheParser.Tokens.RETURN.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(171)
		 		try match(MapacheParser.Tokens.RETURN.rawValue)
		 		setState(172)
		 		try expresion()

		 	}

		 	setState(175)
		 	try match(MapacheParser.Tokens.CLOSE_CURLY.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class EstatutoContext: ParserRuleContext {
			open
			func variable() -> VariableContext? {
				return getRuleContext(VariableContext.self, 0)
			}
			open
			func asignacion() -> AsignacionContext? {
				return getRuleContext(AsignacionContext.self, 0)
			}
			open
			func condicion() -> CondicionContext? {
				return getRuleContext(CondicionContext.self, 0)
			}
			open
			func imprimir() -> ImprimirContext? {
				return getRuleContext(ImprimirContext.self, 0)
			}
			open
			func ciclo() -> CicloContext? {
				return getRuleContext(CicloContext.self, 0)
			}
			open
			func funcion() -> FuncionContext? {
				return getRuleContext(FuncionContext.self, 0)
			}
			open
			func llamada() -> LlamadaContext? {
				return getRuleContext(LlamadaContext.self, 0)
			}
			open
			func SEMICOLON() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.SEMICOLON.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_estatuto
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterEstatuto(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitEstatuto(self)
			}
		}
	}
	@discardableResult
	 open func estatuto() throws -> EstatutoContext {
		var _localctx: EstatutoContext = EstatutoContext(_ctx, getState())
		try enterRule(_localctx, 18, MapacheParser.RULE_estatuto)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(186)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,12, _ctx)) {
		 	case 1:
		 		setState(177)
		 		try variable()

		 		break
		 	case 2:
		 		setState(178)
		 		try asignacion()

		 		break
		 	case 3:
		 		setState(179)
		 		try condicion()

		 		break
		 	case 4:
		 		setState(180)
		 		try imprimir()

		 		break
		 	case 5:
		 		setState(181)
		 		try ciclo()

		 		break
		 	case 6:
		 		setState(182)
		 		try funcion()

		 		break
		 	case 7:
		 		setState(183)
		 		try llamada()
		 		setState(184)
		 		try match(MapacheParser.Tokens.SEMICOLON.rawValue)


		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ExpresionContext: ParserRuleContext {
			open
			func expBool() -> [ExpBoolContext] {
				return getRuleContexts(ExpBoolContext.self)
			}
			open
			func expBool(_ i: Int) -> ExpBoolContext? {
				return getRuleContext(ExpBoolContext.self, i)
			}
			open
			func AND() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.AND.rawValue, 0)
			}
			open
			func OR() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.OR.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_expresion
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterExpresion(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitExpresion(self)
			}
		}
	}
	@discardableResult
	 open func expresion() throws -> ExpresionContext {
		var _localctx: ExpresionContext = ExpresionContext(_ctx, getState())
		try enterRule(_localctx, 20, MapacheParser.RULE_expresion)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(188)
		 	try expBool()
		 	setState(191)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == MapacheParser.Tokens.AND.rawValue || _la == MapacheParser.Tokens.OR.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(189)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == MapacheParser.Tokens.AND.rawValue || _la == MapacheParser.Tokens.OR.rawValue
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(190)
		 		try expBool()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ExpBoolContext: ParserRuleContext {
			open
			func exp() -> [ExpContext] {
				return getRuleContexts(ExpContext.self)
			}
			open
			func exp(_ i: Int) -> ExpContext? {
				return getRuleContext(ExpContext.self, i)
			}
			open
			func LESS_THAN() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.LESS_THAN.rawValue, 0)
			}
			open
			func GREATER_THAN() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.GREATER_THAN.rawValue, 0)
			}
			open
			func EQUAL() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.EQUAL.rawValue, 0)
			}
			open
			func NOT_EQUAL() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.NOT_EQUAL.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_expBool
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterExpBool(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitExpBool(self)
			}
		}
	}
	@discardableResult
	 open func expBool() throws -> ExpBoolContext {
		var _localctx: ExpBoolContext = ExpBoolContext(_ctx, getState())
		try enterRule(_localctx, 22, MapacheParser.RULE_expBool)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(193)
		 	try exp()
		 	setState(196)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, MapacheParser.Tokens.EQUAL.rawValue,MapacheParser.Tokens.NOT_EQUAL.rawValue,MapacheParser.Tokens.LESS_THAN.rawValue,MapacheParser.Tokens.GREATER_THAN.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(194)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, MapacheParser.Tokens.EQUAL.rawValue,MapacheParser.Tokens.NOT_EQUAL.rawValue,MapacheParser.Tokens.LESS_THAN.rawValue,MapacheParser.Tokens.GREATER_THAN.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(195)
		 		try exp()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ExpContext: ParserRuleContext {
			open
			func termino() -> [TerminoContext] {
				return getRuleContexts(TerminoContext.self)
			}
			open
			func termino(_ i: Int) -> TerminoContext? {
				return getRuleContext(TerminoContext.self, i)
			}
			open
			func PLUS() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.PLUS.rawValue, 0)
			}
			open
			func MINUS() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.MINUS.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_exp
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterExp(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitExp(self)
			}
		}
	}
	@discardableResult
	 open func exp() throws -> ExpContext {
		var _localctx: ExpContext = ExpContext(_ctx, getState())
		try enterRule(_localctx, 24, MapacheParser.RULE_exp)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(198)
		 	try termino()
		 	setState(201)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == MapacheParser.Tokens.PLUS.rawValue || _la == MapacheParser.Tokens.MINUS.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(199)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == MapacheParser.Tokens.PLUS.rawValue || _la == MapacheParser.Tokens.MINUS.rawValue
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(200)
		 		try termino()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TerminoContext: ParserRuleContext {
			open
			func factor() -> [FactorContext] {
				return getRuleContexts(FactorContext.self)
			}
			open
			func factor(_ i: Int) -> FactorContext? {
				return getRuleContext(FactorContext.self, i)
			}
			open
			func MULTIPLY() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.MULTIPLY.rawValue, 0)
			}
			open
			func DIVISION() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.DIVISION.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_termino
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterTermino(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitTermino(self)
			}
		}
	}
	@discardableResult
	 open func termino() throws -> TerminoContext {
		var _localctx: TerminoContext = TerminoContext(_ctx, getState())
		try enterRule(_localctx, 26, MapacheParser.RULE_termino)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(203)
		 	try factor()
		 	setState(206)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == MapacheParser.Tokens.MULTIPLY.rawValue || _la == MapacheParser.Tokens.DIVISION.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(204)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == MapacheParser.Tokens.MULTIPLY.rawValue || _la == MapacheParser.Tokens.DIVISION.rawValue
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(205)
		 		try factor()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FactorContext: ParserRuleContext {
			open
			func OPEN_PAREN() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.OPEN_PAREN.rawValue, 0)
			}
			open
			func expresion() -> ExpresionContext? {
				return getRuleContext(ExpresionContext.self, 0)
			}
			open
			func CLOSE_PAREN() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.CLOSE_PAREN.rawValue, 0)
			}
			open
			func vector() -> VectorContext? {
				return getRuleContext(VectorContext.self, 0)
			}
			open
			func cte() -> CteContext? {
				return getRuleContext(CteContext.self, 0)
			}
			open
			func llamada() -> LlamadaContext? {
				return getRuleContext(LlamadaContext.self, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.ID.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_factor
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterFactor(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitFactor(self)
			}
		}
	}
	@discardableResult
	 open func factor() throws -> FactorContext {
		var _localctx: FactorContext = FactorContext(_ctx, getState())
		try enterRule(_localctx, 28, MapacheParser.RULE_factor)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(216)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,17, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(208)
		 		try match(MapacheParser.Tokens.OPEN_PAREN.rawValue)
		 		setState(209)
		 		try expresion()
		 		setState(210)
		 		try match(MapacheParser.Tokens.CLOSE_PAREN.rawValue)


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(212)
		 		try vector()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(213)
		 		try cte()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(214)
		 		try llamada()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(215)
		 		try match(MapacheParser.Tokens.ID.rawValue)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VectorContext: ParserRuleContext {
			open
			func ID() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.ID.rawValue, 0)
			}
			open
			func OPEN_BRACKET() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.OPEN_BRACKET.rawValue, 0)
			}
			open
			func exp() -> ExpContext? {
				return getRuleContext(ExpContext.self, 0)
			}
			open
			func CLOSE_BRACKET() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.CLOSE_BRACKET.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_vector
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterVector(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitVector(self)
			}
		}
	}
	@discardableResult
	 open func vector() throws -> VectorContext {
		var _localctx: VectorContext = VectorContext(_ctx, getState())
		try enterRule(_localctx, 30, MapacheParser.RULE_vector)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(218)
		 	try match(MapacheParser.Tokens.ID.rawValue)
		 	setState(219)
		 	try match(MapacheParser.Tokens.OPEN_BRACKET.rawValue)
		 	setState(220)
		 	try exp()
		 	setState(221)
		 	try match(MapacheParser.Tokens.CLOSE_BRACKET.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class CicloContext: ParserRuleContext {
			open
			func cicloWhile() -> CicloWhileContext? {
				return getRuleContext(CicloWhileContext.self, 0)
			}
			open
			func cicloFor() -> CicloForContext? {
				return getRuleContext(CicloForContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_ciclo
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterCiclo(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitCiclo(self)
			}
		}
	}
	@discardableResult
	 open func ciclo() throws -> CicloContext {
		var _localctx: CicloContext = CicloContext(_ctx, getState())
		try enterRule(_localctx, 32, MapacheParser.RULE_ciclo)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(225)
		 	try _errHandler.sync(self)
		 	switch (MapacheParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .WHILE:
		 		setState(223)
		 		try cicloWhile()

		 		break

		 	case .FOR:
		 		setState(224)
		 		try cicloFor()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class CicloWhileContext: ParserRuleContext {
			open
			func WHILE() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.WHILE.rawValue, 0)
			}
			open
			func OPEN_PAREN() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.OPEN_PAREN.rawValue, 0)
			}
			open
			func expresion() -> ExpresionContext? {
				return getRuleContext(ExpresionContext.self, 0)
			}
			open
			func CLOSE_PAREN() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.CLOSE_PAREN.rawValue, 0)
			}
			open
			func condicionLista() -> CondicionListaContext? {
				return getRuleContext(CondicionListaContext.self, 0)
			}
			open
			func bloque() -> BloqueContext? {
				return getRuleContext(BloqueContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_cicloWhile
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterCicloWhile(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitCicloWhile(self)
			}
		}
	}
	@discardableResult
	 open func cicloWhile() throws -> CicloWhileContext {
		var _localctx: CicloWhileContext = CicloWhileContext(_ctx, getState())
		try enterRule(_localctx, 34, MapacheParser.RULE_cicloWhile)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(227)
		 	try match(MapacheParser.Tokens.WHILE.rawValue)
		 	setState(228)
		 	try match(MapacheParser.Tokens.OPEN_PAREN.rawValue)
		 	setState(229)
		 	try expresion()
		 	setState(230)
		 	try match(MapacheParser.Tokens.CLOSE_PAREN.rawValue)
		 	setState(231)
		 	try condicionLista()
		 	setState(232)
		 	try bloque()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class CicloForContext: ParserRuleContext {
			open
			func FOR() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.FOR.rawValue, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.ID.rawValue, 0)
			}
			open
			func IN() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.IN.rawValue, 0)
			}
			open
			func exp() -> [ExpContext] {
				return getRuleContexts(ExpContext.self)
			}
			open
			func exp(_ i: Int) -> ExpContext? {
				return getRuleContext(ExpContext.self, i)
			}
			open
			func DOTS() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.DOTS.rawValue, 0)
			}
			open
			func BY() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.BY.rawValue, 0)
			}
			open
			func forRango() -> ForRangoContext? {
				return getRuleContext(ForRangoContext.self, 0)
			}
			open
			func forListo() -> ForListoContext? {
				return getRuleContext(ForListoContext.self, 0)
			}
			open
			func bloque() -> BloqueContext? {
				return getRuleContext(BloqueContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_cicloFor
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterCicloFor(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitCicloFor(self)
			}
		}
	}
	@discardableResult
	 open func cicloFor() throws -> CicloForContext {
		var _localctx: CicloForContext = CicloForContext(_ctx, getState())
		try enterRule(_localctx, 36, MapacheParser.RULE_cicloFor)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(234)
		 	try match(MapacheParser.Tokens.FOR.rawValue)
		 	setState(235)
		 	try match(MapacheParser.Tokens.ID.rawValue)
		 	setState(236)
		 	try match(MapacheParser.Tokens.IN.rawValue)
		 	setState(237)
		 	try exp()
		 	setState(238)
		 	try match(MapacheParser.Tokens.DOTS.rawValue)
		 	setState(239)
		 	try exp()
		 	setState(240)
		 	try match(MapacheParser.Tokens.BY.rawValue)
		 	setState(241)
		 	try forRango()
		 	setState(242)
		 	try exp()
		 	setState(243)
		 	try forListo()
		 	setState(244)
		 	try bloque()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ImprimirContext: ParserRuleContext {
			open
			func PRINT() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.PRINT.rawValue, 0)
			}
			open
			func OPEN_PAREN() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.OPEN_PAREN.rawValue, 0)
			}
			open
			func CLOSE_PAREN() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.CLOSE_PAREN.rawValue, 0)
			}
			open
			func SEMICOLON() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.SEMICOLON.rawValue, 0)
			}
			open
			func TEXT() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.TEXT.rawValue, 0)
			}
			open
			func expresion() -> ExpresionContext? {
				return getRuleContext(ExpresionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_imprimir
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterImprimir(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitImprimir(self)
			}
		}
	}
	@discardableResult
	 open func imprimir() throws -> ImprimirContext {
		var _localctx: ImprimirContext = ImprimirContext(_ctx, getState())
		try enterRule(_localctx, 38, MapacheParser.RULE_imprimir)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(246)
		 	try match(MapacheParser.Tokens.PRINT.rawValue)
		 	setState(247)
		 	try match(MapacheParser.Tokens.OPEN_PAREN.rawValue)
		 	setState(250)
		 	try _errHandler.sync(self)
		 	switch (MapacheParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .TEXT:
		 		setState(248)
		 		try match(MapacheParser.Tokens.TEXT.rawValue)

		 		break
		 	case .MINUS:fallthrough
		 	case .OPEN_PAREN:fallthrough
		 	case .CONST_I:fallthrough
		 	case .CONST_F:fallthrough
		 	case .CONST_B:fallthrough
		 	case .CONST_C:fallthrough
		 	case .ID:
		 		setState(249)
		 		try expresion()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		 	setState(252)
		 	try match(MapacheParser.Tokens.CLOSE_PAREN.rawValue)
		 	setState(253)
		 	try match(MapacheParser.Tokens.SEMICOLON.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TipoContext: ParserRuleContext {
			open
			func INT() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.INT.rawValue, 0)
			}
			open
			func FLOAT() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.FLOAT.rawValue, 0)
			}
			open
			func BOOL() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.BOOL.rawValue, 0)
			}
			open
			func CHAR() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.CHAR.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_tipo
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterTipo(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitTipo(self)
			}
		}
	}
	@discardableResult
	 open func tipo() throws -> TipoContext {
		var _localctx: TipoContext = TipoContext(_ctx, getState())
		try enterRule(_localctx, 40, MapacheParser.RULE_tipo)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(255)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, MapacheParser.Tokens.INT.rawValue,MapacheParser.Tokens.CHAR.rawValue,MapacheParser.Tokens.FLOAT.rawValue,MapacheParser.Tokens.BOOL.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class CteContext: ParserRuleContext {
			open
			func CONST_B() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.CONST_B.rawValue, 0)
			}
			open
			func CONST_C() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.CONST_C.rawValue, 0)
			}
			open
			func CONST_F() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.CONST_F.rawValue, 0)
			}
			open
			func MINUS() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.MINUS.rawValue, 0)
			}
			open
			func CONST_I() -> TerminalNode? {
				return getToken(MapacheParser.Tokens.CONST_I.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_cte
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterCte(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitCte(self)
			}
		}
	}
	@discardableResult
	 open func cte() throws -> CteContext {
		var _localctx: CteContext = CteContext(_ctx, getState())
		try enterRule(_localctx, 42, MapacheParser.RULE_cte)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(267)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,22, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(257)
		 		try match(MapacheParser.Tokens.CONST_B.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(258)
		 		try match(MapacheParser.Tokens.CONST_C.rawValue)

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(260)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == MapacheParser.Tokens.MINUS.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(259)
		 			try match(MapacheParser.Tokens.MINUS.rawValue)

		 		}

		 		setState(262)
		 		try match(MapacheParser.Tokens.CONST_F.rawValue)


		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(264)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == MapacheParser.Tokens.MINUS.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(263)
		 			try match(MapacheParser.Tokens.MINUS.rawValue)

		 		}

		 		setState(266)
		 		try match(MapacheParser.Tokens.CONST_I.rawValue)


		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class CondicionListaContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_condicionLista
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterCondicionLista(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitCondicionLista(self)
			}
		}
	}
	@discardableResult
	 open func condicionLista() throws -> CondicionListaContext {
		var _localctx: CondicionListaContext = CondicionListaContext(_ctx, getState())
		try enterRule(_localctx, 44, MapacheParser.RULE_condicionLista)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class CondicionElseContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_condicionElse
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterCondicionElse(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitCondicionElse(self)
			}
		}
	}
	@discardableResult
	 open func condicionElse() throws -> CondicionElseContext {
		var _localctx: CondicionElseContext = CondicionElseContext(_ctx, getState())
		try enterRule(_localctx, 46, MapacheParser.RULE_condicionElse)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ArgumentoListoContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_argumentoListo
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterArgumentoListo(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitArgumentoListo(self)
			}
		}
	}
	@discardableResult
	 open func argumentoListo() throws -> ArgumentoListoContext {
		var _localctx: ArgumentoListoContext = ArgumentoListoContext(_ctx, getState())
		try enterRule(_localctx, 48, MapacheParser.RULE_argumentoListo)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ArgumentoNuevoContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_argumentoNuevo
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterArgumentoNuevo(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitArgumentoNuevo(self)
			}
		}
	}
	@discardableResult
	 open func argumentoNuevo() throws -> ArgumentoNuevoContext {
		var _localctx: ArgumentoNuevoContext = ArgumentoNuevoContext(_ctx, getState())
		try enterRule(_localctx, 50, MapacheParser.RULE_argumentoNuevo)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ParamNuevoContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_paramNuevo
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterParamNuevo(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitParamNuevo(self)
			}
		}
	}
	@discardableResult
	 open func paramNuevo() throws -> ParamNuevoContext {
		var _localctx: ParamNuevoContext = ParamNuevoContext(_ctx, getState())
		try enterRule(_localctx, 52, MapacheParser.RULE_paramNuevo)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ParamListoContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_paramListo
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterParamListo(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitParamListo(self)
			}
		}
	}
	@discardableResult
	 open func paramListo() throws -> ParamListoContext {
		var _localctx: ParamListoContext = ParamListoContext(_ctx, getState())
		try enterRule(_localctx, 54, MapacheParser.RULE_paramListo)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ForRangoContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_forRango
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterForRango(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitForRango(self)
			}
		}
	}
	@discardableResult
	 open func forRango() throws -> ForRangoContext {
		var _localctx: ForRangoContext = ForRangoContext(_ctx, getState())
		try enterRule(_localctx, 56, MapacheParser.RULE_forRango)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ForListoContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_forListo
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterForListo(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitForListo(self)
			}
		}
	}
	@discardableResult
	 open func forListo() throws -> ForListoContext {
		var _localctx: ForListoContext = ForListoContext(_ctx, getState())
		try enterRule(_localctx, 58, MapacheParser.RULE_forListo)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class AsignacionVectorContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return MapacheParser.RULE_asignacionVector
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.enterAsignacionVector(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? MapacheListener {
				listener.exitAsignacionVector(self)
			}
		}
	}
	@discardableResult
	 open func asignacionVector() throws -> AsignacionVectorContext {
		var _localctx: AsignacionVectorContext = AsignacionVectorContext(_ctx, getState())
		try enterRule(_localctx, 60, MapacheParser.RULE_asignacionVector)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public
	static let _serializedATN = MapacheParserATN().jsonString

	public
	static let _ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}