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
            RULE_exp = 11, RULE_termino = 12, RULE_factor = 13, RULE_vector = 14, 
            RULE_ciclo = 15, RULE_cicloWhile = 16, RULE_cicloFor = 17, RULE_imprimir = 18, 
            RULE_tipo = 19, RULE_cte = 20

	public
	static let ruleNames: [String] = [
		"mapache", "program", "asignacion", "llamada", "condicion", "variable", 
		"funcion", "bloque", "bloquefunc", "estatuto", "expresion", "exp", "termino", 
		"factor", "vector", "ciclo", "cicloWhile", "cicloFor", "imprimir", "tipo", 
		"cte"
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitMapache(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitMapache(self)
			}
			else {
			     return visitor.visitChildren(self)
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
		 	setState(43) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(42)
		 		try program()


		 		setState(45); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == MapacheParser.Tokens.MAPACHE.rawValue
		 	      return testSet
		 	 }())
		 	setState(47)
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitProgram(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitProgram(self)
			}
			else {
			     return visitor.visitChildren(self)
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
		 	setState(49)
		 	try match(MapacheParser.Tokens.MAPACHE.rawValue)
		 	setState(50)
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitAsignacion(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitAsignacion(self)
			}
			else {
			     return visitor.visitChildren(self)
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
		 	setState(52)
		 	try match(MapacheParser.Tokens.ID.rawValue)
		 	setState(57)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == MapacheParser.Tokens.OPEN_BRACKET.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(53)
		 		try match(MapacheParser.Tokens.OPEN_BRACKET.rawValue)
		 		setState(54)
		 		try exp()
		 		setState(55)
		 		try match(MapacheParser.Tokens.CLOSE_BRACKET.rawValue)

		 	}

		 	setState(59)
		 	try match(MapacheParser.Tokens.ASSIGN.rawValue)
		 	setState(60)
		 	try expresion()
		 	setState(61)
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
			func COMMA() -> [TerminalNode] {
				return getTokens(MapacheParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(MapacheParser.Tokens.COMMA.rawValue, i)
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitLlamada(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitLlamada(self)
			}
			else {
			     return visitor.visitChildren(self)
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
		 	setState(63)
		 	try match(MapacheParser.Tokens.ID.rawValue)
		 	setState(64)
		 	try match(MapacheParser.Tokens.OPEN_PAREN.rawValue)
		 	setState(73)
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
		 		setState(65)
		 		try expresion()
		 		setState(70)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == MapacheParser.Tokens.COMMA.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(66)
		 			try match(MapacheParser.Tokens.COMMA.rawValue)
		 			setState(67)
		 			try expresion()


		 			setState(72)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}

		 	}

		 	setState(75)
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitCondicion(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitCondicion(self)
			}
			else {
			     return visitor.visitChildren(self)
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
		 	setState(77)
		 	try match(MapacheParser.Tokens.IF.rawValue)
		 	setState(78)
		 	try match(MapacheParser.Tokens.OPEN_PAREN.rawValue)
		 	setState(79)
		 	try expresion()
		 	setState(80)
		 	try match(MapacheParser.Tokens.CLOSE_PAREN.rawValue)
		 	setState(81)
		 	try bloque()
		 	setState(84)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == MapacheParser.Tokens.ELSE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(82)
		 		try match(MapacheParser.Tokens.ELSE.rawValue)
		 		setState(83)
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitVariable(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitVariable(self)
			}
			else {
			     return visitor.visitChildren(self)
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
		 	setState(86)
		 	try match(MapacheParser.Tokens.VAR.rawValue)
		 	setState(87)
		 	try match(MapacheParser.Tokens.ID.rawValue)
		 	setState(91)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == MapacheParser.Tokens.OPEN_BRACKET.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(88)
		 		try match(MapacheParser.Tokens.OPEN_BRACKET.rawValue)
		 		setState(89)
		 		try match(MapacheParser.Tokens.CONST_I.rawValue)
		 		setState(90)
		 		try match(MapacheParser.Tokens.CLOSE_BRACKET.rawValue)

		 	}

		 	setState(93)
		 	try match(MapacheParser.Tokens.COLON.rawValue)
		 	setState(94)
		 	try tipo()
		 	setState(95)
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
			func COLON() -> [TerminalNode] {
				return getTokens(MapacheParser.Tokens.COLON.rawValue)
			}
			open
			func COLON(_ i:Int) -> TerminalNode? {
				return getToken(MapacheParser.Tokens.COLON.rawValue, i)
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitFuncion(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitFuncion(self)
			}
			else {
			     return visitor.visitChildren(self)
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
		 	setState(97)
		 	try match(MapacheParser.Tokens.FUNC.rawValue)
		 	setState(98)
		 	try match(MapacheParser.Tokens.ID.rawValue)
		 	setState(99)
		 	try match(MapacheParser.Tokens.OPEN_PAREN.rawValue)
		 	setState(112)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == MapacheParser.Tokens.ID.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(100)
		 		try match(MapacheParser.Tokens.ID.rawValue)
		 		setState(101)
		 		try match(MapacheParser.Tokens.COLON.rawValue)
		 		setState(102)
		 		try tipo()
		 		setState(109)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == MapacheParser.Tokens.COMMA.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(103)
		 			try match(MapacheParser.Tokens.COMMA.rawValue)
		 			setState(104)
		 			try match(MapacheParser.Tokens.ID.rawValue)
		 			setState(105)
		 			try match(MapacheParser.Tokens.COLON.rawValue)
		 			setState(106)
		 			try tipo()


		 			setState(111)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}

		 	}

		 	setState(114)
		 	try match(MapacheParser.Tokens.CLOSE_PAREN.rawValue)
		 	setState(115)
		 	try match(MapacheParser.Tokens.ARROW.rawValue)
		 	setState(118)
		 	try _errHandler.sync(self)
		 	switch (MapacheParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .VOID:
		 		setState(116)
		 		try match(MapacheParser.Tokens.VOID.rawValue)

		 		break
		 	case .INT:fallthrough
		 	case .CHAR:fallthrough
		 	case .FLOAT:fallthrough
		 	case .BOOL:
		 		setState(117)
		 		try tipo()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		 	setState(120)
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitBloque(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitBloque(self)
			}
			else {
			     return visitor.visitChildren(self)
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
		 	setState(122)
		 	try match(MapacheParser.Tokens.OPEN_CURLY.rawValue)
		 	setState(126)
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
		 		setState(123)
		 		try estatuto()


		 		setState(128)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(129)
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitBloquefunc(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitBloquefunc(self)
			}
			else {
			     return visitor.visitChildren(self)
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
		 	setState(131)
		 	try match(MapacheParser.Tokens.OPEN_CURLY.rawValue)
		 	setState(135)
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
		 		setState(132)
		 		try estatuto()


		 		setState(137)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(140)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == MapacheParser.Tokens.RETURN.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(138)
		 		try match(MapacheParser.Tokens.RETURN.rawValue)
		 		setState(139)
		 		try expresion()

		 	}

		 	setState(142)
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitEstatuto(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitEstatuto(self)
			}
			else {
			     return visitor.visitChildren(self)
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
		 	setState(153)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,12, _ctx)) {
		 	case 1:
		 		setState(144)
		 		try variable()

		 		break
		 	case 2:
		 		setState(145)
		 		try asignacion()

		 		break
		 	case 3:
		 		setState(146)
		 		try condicion()

		 		break
		 	case 4:
		 		setState(147)
		 		try imprimir()

		 		break
		 	case 5:
		 		setState(148)
		 		try ciclo()

		 		break
		 	case 6:
		 		setState(149)
		 		try funcion()

		 		break
		 	case 7:
		 		setState(150)
		 		try llamada()
		 		setState(151)
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitExpresion(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitExpresion(self)
			}
			else {
			     return visitor.visitChildren(self)
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
		 	setState(155)
		 	try exp()
		 	setState(158)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, MapacheParser.Tokens.EQUAL.rawValue,MapacheParser.Tokens.NOT_EQUAL.rawValue,MapacheParser.Tokens.LESS_THAN.rawValue,MapacheParser.Tokens.GREATER_THAN.rawValue,MapacheParser.Tokens.AND.rawValue,MapacheParser.Tokens.OR.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(156)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, MapacheParser.Tokens.EQUAL.rawValue,MapacheParser.Tokens.NOT_EQUAL.rawValue,MapacheParser.Tokens.LESS_THAN.rawValue,MapacheParser.Tokens.GREATER_THAN.rawValue,MapacheParser.Tokens.AND.rawValue,MapacheParser.Tokens.OR.rawValue]
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
		 		setState(157)
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitExp(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitExp(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func exp() throws -> ExpContext {
		var _localctx: ExpContext = ExpContext(_ctx, getState())
		try enterRule(_localctx, 22, MapacheParser.RULE_exp)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(160)
		 	try termino()
		 	setState(163)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == MapacheParser.Tokens.PLUS.rawValue || _la == MapacheParser.Tokens.MINUS.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(161)
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
		 		setState(162)
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitTermino(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitTermino(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func termino() throws -> TerminoContext {
		var _localctx: TerminoContext = TerminoContext(_ctx, getState())
		try enterRule(_localctx, 24, MapacheParser.RULE_termino)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(165)
		 	try factor()
		 	setState(168)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == MapacheParser.Tokens.MULTIPLY.rawValue || _la == MapacheParser.Tokens.DIVISION.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(166)
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
		 		setState(167)
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
			func exp() -> ExpContext? {
				return getRuleContext(ExpContext.self, 0)
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitFactor(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitFactor(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func factor() throws -> FactorContext {
		var _localctx: FactorContext = FactorContext(_ctx, getState())
		try enterRule(_localctx, 26, MapacheParser.RULE_factor)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(178)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,16, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(170)
		 		try match(MapacheParser.Tokens.OPEN_PAREN.rawValue)
		 		setState(171)
		 		try exp()
		 		setState(172)
		 		try match(MapacheParser.Tokens.CLOSE_PAREN.rawValue)


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(174)
		 		try vector()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(175)
		 		try cte()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(176)
		 		try llamada()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(177)
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitVector(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitVector(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func vector() throws -> VectorContext {
		var _localctx: VectorContext = VectorContext(_ctx, getState())
		try enterRule(_localctx, 28, MapacheParser.RULE_vector)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(180)
		 	try match(MapacheParser.Tokens.ID.rawValue)
		 	setState(181)
		 	try match(MapacheParser.Tokens.OPEN_BRACKET.rawValue)
		 	setState(182)
		 	try exp()
		 	setState(183)
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitCiclo(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitCiclo(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func ciclo() throws -> CicloContext {
		var _localctx: CicloContext = CicloContext(_ctx, getState())
		try enterRule(_localctx, 30, MapacheParser.RULE_ciclo)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(187)
		 	try _errHandler.sync(self)
		 	switch (MapacheParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .WHILE:
		 		setState(185)
		 		try cicloWhile()

		 		break

		 	case .FOR:
		 		setState(186)
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
			func expresion() -> ExpresionContext? {
				return getRuleContext(ExpresionContext.self, 0)
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitCicloWhile(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitCicloWhile(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func cicloWhile() throws -> CicloWhileContext {
		var _localctx: CicloWhileContext = CicloWhileContext(_ctx, getState())
		try enterRule(_localctx, 32, MapacheParser.RULE_cicloWhile)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(189)
		 	try match(MapacheParser.Tokens.WHILE.rawValue)
		 	setState(190)
		 	try expresion()
		 	setState(191)
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitCicloFor(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitCicloFor(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func cicloFor() throws -> CicloForContext {
		var _localctx: CicloForContext = CicloForContext(_ctx, getState())
		try enterRule(_localctx, 34, MapacheParser.RULE_cicloFor)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(193)
		 	try match(MapacheParser.Tokens.FOR.rawValue)
		 	setState(194)
		 	try match(MapacheParser.Tokens.ID.rawValue)
		 	setState(195)
		 	try match(MapacheParser.Tokens.IN.rawValue)
		 	setState(196)
		 	try exp()
		 	setState(197)
		 	try match(MapacheParser.Tokens.DOTS.rawValue)
		 	setState(198)
		 	try exp()
		 	setState(199)
		 	try match(MapacheParser.Tokens.BY.rawValue)
		 	setState(200)
		 	try exp()
		 	setState(201)
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
			func exp() -> ExpContext? {
				return getRuleContext(ExpContext.self, 0)
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitImprimir(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitImprimir(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func imprimir() throws -> ImprimirContext {
		var _localctx: ImprimirContext = ImprimirContext(_ctx, getState())
		try enterRule(_localctx, 36, MapacheParser.RULE_imprimir)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(203)
		 	try match(MapacheParser.Tokens.PRINT.rawValue)
		 	setState(204)
		 	try match(MapacheParser.Tokens.OPEN_PAREN.rawValue)
		 	setState(207)
		 	try _errHandler.sync(self)
		 	switch (MapacheParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .TEXT:
		 		setState(205)
		 		try match(MapacheParser.Tokens.TEXT.rawValue)

		 		break
		 	case .MINUS:fallthrough
		 	case .OPEN_PAREN:fallthrough
		 	case .CONST_I:fallthrough
		 	case .CONST_F:fallthrough
		 	case .CONST_B:fallthrough
		 	case .CONST_C:fallthrough
		 	case .ID:
		 		setState(206)
		 		try exp()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		 	setState(209)
		 	try match(MapacheParser.Tokens.CLOSE_PAREN.rawValue)
		 	setState(210)
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitTipo(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitTipo(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func tipo() throws -> TipoContext {
		var _localctx: TipoContext = TipoContext(_ctx, getState())
		try enterRule(_localctx, 38, MapacheParser.RULE_tipo)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(212)
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
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? MapacheVisitor {
			    return visitor.visitCte(self)
			}
			else if let visitor = visitor as? MapacheBaseVisitor {
			    return visitor.visitCte(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func cte() throws -> CteContext {
		var _localctx: CteContext = CteContext(_ctx, getState())
		try enterRule(_localctx, 40, MapacheParser.RULE_cte)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(224)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,21, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(214)
		 		try match(MapacheParser.Tokens.CONST_B.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(215)
		 		try match(MapacheParser.Tokens.CONST_C.rawValue)

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(217)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == MapacheParser.Tokens.MINUS.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(216)
		 			try match(MapacheParser.Tokens.MINUS.rawValue)

		 		}

		 		setState(219)
		 		try match(MapacheParser.Tokens.CONST_F.rawValue)


		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(221)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == MapacheParser.Tokens.MINUS.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(220)
		 			try match(MapacheParser.Tokens.MINUS.rawValue)

		 		}

		 		setState(223)
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


	public
	static let _serializedATN = MapacheParserATN().jsonString

	public
	static let _ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}