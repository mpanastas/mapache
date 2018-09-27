// Generated from /Users/luisfelipesv/Documents/GitHub/mapache/Grammar/Mapache.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MapacheParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.7.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		MAPACHE=1, INT=2, CHAR=3, FLOAT=4, BOOL=5, VOID=6, FUNC=7, RETURN=8, VAR=9, 
		PRINT=10, IF=11, ELSE=12, WHILE=13, FOR=14, IN=15, DOTS=16, BY=17, PLUS=18, 
		MINUS=19, MULTIPLY=20, DIVISION=21, ASSIGN=22, EQUAL=23, NOT=24, NOT_EQUAL=25, 
		LESS_THAN=26, GREATER_THAN=27, AND=28, OR=29, OPEN_BRACKET=30, CLOSE_BRACKET=31, 
		OPEN_PAREN=32, CLOSE_PAREN=33, OPEN_CURLY=34, CLOSE_CURLY=35, COMMA=36, 
		COLON=37, DOT=38, SEMICOLON=39, ARROW=40, TRUE=41, FALSE=42, LETRERO=43, 
		CONST_I=44, CONST_F=45, CONST_B=46, CONST_C=47, ID=48, TEXT=49, WS=50;
	public static final int
		RULE_mapache = 0, RULE_program = 1, RULE_asignacion = 2, RULE_condicion = 3, 
		RULE_variable = 4, RULE_funcion = 5, RULE_bloque = 6, RULE_estatuto = 7, 
		RULE_expresion = 8, RULE_exp = 9, RULE_termino = 10, RULE_llamada = 11, 
		RULE_factor = 12, RULE_ciclo = 13, RULE_cicloWhile = 14, RULE_cicloFor = 15, 
		RULE_imprimir = 16, RULE_tipo = 17, RULE_cte = 18;
	public static final String[] ruleNames = {
		"mapache", "program", "asignacion", "condicion", "variable", "funcion", 
		"bloque", "estatuto", "expresion", "exp", "termino", "llamada", "factor", 
		"ciclo", "cicloWhile", "cicloFor", "imprimir", "tipo", "cte"
	};

	private static final String[] _LITERAL_NAMES = {
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, "MAPACHE", "INT", "CHAR", "FLOAT", "BOOL", "VOID", "FUNC", "RETURN", 
		"VAR", "PRINT", "IF", "ELSE", "WHILE", "FOR", "IN", "DOTS", "BY", "PLUS", 
		"MINUS", "MULTIPLY", "DIVISION", "ASSIGN", "EQUAL", "NOT", "NOT_EQUAL", 
		"LESS_THAN", "GREATER_THAN", "AND", "OR", "OPEN_BRACKET", "CLOSE_BRACKET", 
		"OPEN_PAREN", "CLOSE_PAREN", "OPEN_CURLY", "CLOSE_CURLY", "COMMA", "COLON", 
		"DOT", "SEMICOLON", "ARROW", "TRUE", "FALSE", "LETRERO", "CONST_I", "CONST_F", 
		"CONST_B", "CONST_C", "ID", "TEXT", "WS"
	};
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Mapache.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public MapacheParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}
	public static class MapacheContext extends ParserRuleContext {
		public TerminalNode EOF() { return getToken(MapacheParser.EOF, 0); }
		public List<ProgramContext> program() {
			return getRuleContexts(ProgramContext.class);
		}
		public ProgramContext program(int i) {
			return getRuleContext(ProgramContext.class,i);
		}
		public MapacheContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_mapache; }
	}

	public final MapacheContext mapache() throws RecognitionException {
		MapacheContext _localctx = new MapacheContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_mapache);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(39); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(38);
				program();
				}
				}
				setState(41); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==MAPACHE );
			setState(43);
			match(EOF);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ProgramContext extends ParserRuleContext {
		public TerminalNode MAPACHE() { return getToken(MapacheParser.MAPACHE, 0); }
		public BloqueContext bloque() {
			return getRuleContext(BloqueContext.class,0);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_program);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(45);
			match(MAPACHE);
			setState(46);
			bloque();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AsignacionContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(MapacheParser.ID, 0); }
		public TerminalNode ASSIGN() { return getToken(MapacheParser.ASSIGN, 0); }
		public ExpresionContext expresion() {
			return getRuleContext(ExpresionContext.class,0);
		}
		public TerminalNode SEMICOLON() { return getToken(MapacheParser.SEMICOLON, 0); }
		public TerminalNode OPEN_BRACKET() { return getToken(MapacheParser.OPEN_BRACKET, 0); }
		public ExpContext exp() {
			return getRuleContext(ExpContext.class,0);
		}
		public TerminalNode CLOSE_BRACKET() { return getToken(MapacheParser.CLOSE_BRACKET, 0); }
		public AsignacionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_asignacion; }
	}

	public final AsignacionContext asignacion() throws RecognitionException {
		AsignacionContext _localctx = new AsignacionContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_asignacion);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(48);
			match(ID);
			setState(53);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==OPEN_BRACKET) {
				{
				setState(49);
				match(OPEN_BRACKET);
				setState(50);
				exp();
				setState(51);
				match(CLOSE_BRACKET);
				}
			}

			setState(55);
			match(ASSIGN);
			setState(56);
			expresion();
			setState(57);
			match(SEMICOLON);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class CondicionContext extends ParserRuleContext {
		public TerminalNode IF() { return getToken(MapacheParser.IF, 0); }
		public TerminalNode OPEN_PAREN() { return getToken(MapacheParser.OPEN_PAREN, 0); }
		public ExpresionContext expresion() {
			return getRuleContext(ExpresionContext.class,0);
		}
		public TerminalNode CLOSE_PAREN() { return getToken(MapacheParser.CLOSE_PAREN, 0); }
		public List<BloqueContext> bloque() {
			return getRuleContexts(BloqueContext.class);
		}
		public BloqueContext bloque(int i) {
			return getRuleContext(BloqueContext.class,i);
		}
		public TerminalNode ELSE() { return getToken(MapacheParser.ELSE, 0); }
		public CondicionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_condicion; }
	}

	public final CondicionContext condicion() throws RecognitionException {
		CondicionContext _localctx = new CondicionContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_condicion);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(59);
			match(IF);
			setState(60);
			match(OPEN_PAREN);
			setState(61);
			expresion();
			setState(62);
			match(CLOSE_PAREN);
			setState(63);
			bloque();
			setState(66);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ELSE) {
				{
				setState(64);
				match(ELSE);
				setState(65);
				bloque();
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VariableContext extends ParserRuleContext {
		public TerminalNode VAR() { return getToken(MapacheParser.VAR, 0); }
		public TerminalNode ID() { return getToken(MapacheParser.ID, 0); }
		public TerminalNode COLON() { return getToken(MapacheParser.COLON, 0); }
		public TipoContext tipo() {
			return getRuleContext(TipoContext.class,0);
		}
		public TerminalNode SEMICOLON() { return getToken(MapacheParser.SEMICOLON, 0); }
		public TerminalNode OPEN_BRACKET() { return getToken(MapacheParser.OPEN_BRACKET, 0); }
		public TerminalNode CONST_I() { return getToken(MapacheParser.CONST_I, 0); }
		public TerminalNode CLOSE_BRACKET() { return getToken(MapacheParser.CLOSE_BRACKET, 0); }
		public VariableContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_variable; }
	}

	public final VariableContext variable() throws RecognitionException {
		VariableContext _localctx = new VariableContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_variable);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(68);
			match(VAR);
			setState(69);
			match(ID);
			setState(73);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==OPEN_BRACKET) {
				{
				setState(70);
				match(OPEN_BRACKET);
				setState(71);
				match(CONST_I);
				setState(72);
				match(CLOSE_BRACKET);
				}
			}

			setState(75);
			match(COLON);
			setState(76);
			tipo();
			setState(77);
			match(SEMICOLON);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FuncionContext extends ParserRuleContext {
		public TerminalNode FUNC() { return getToken(MapacheParser.FUNC, 0); }
		public TerminalNode ID() { return getToken(MapacheParser.ID, 0); }
		public TerminalNode OPEN_PAREN() { return getToken(MapacheParser.OPEN_PAREN, 0); }
		public TerminalNode CLOSE_PAREN() { return getToken(MapacheParser.CLOSE_PAREN, 0); }
		public TerminalNode ARROW() { return getToken(MapacheParser.ARROW, 0); }
		public BloqueContext bloque() {
			return getRuleContext(BloqueContext.class,0);
		}
		public TerminalNode VOID() { return getToken(MapacheParser.VOID, 0); }
		public TipoContext tipo() {
			return getRuleContext(TipoContext.class,0);
		}
		public FuncionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_funcion; }
	}

	public final FuncionContext funcion() throws RecognitionException {
		FuncionContext _localctx = new FuncionContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_funcion);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(79);
			match(FUNC);
			setState(80);
			match(ID);
			setState(81);
			match(OPEN_PAREN);
			setState(82);
			match(CLOSE_PAREN);
			setState(83);
			match(ARROW);
			setState(86);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case VOID:
				{
				setState(84);
				match(VOID);
				}
				break;
			case INT:
			case CHAR:
			case FLOAT:
			case BOOL:
				{
				setState(85);
				tipo();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(88);
			bloque();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BloqueContext extends ParserRuleContext {
		public TerminalNode OPEN_CURLY() { return getToken(MapacheParser.OPEN_CURLY, 0); }
		public TerminalNode CLOSE_CURLY() { return getToken(MapacheParser.CLOSE_CURLY, 0); }
		public List<EstatutoContext> estatuto() {
			return getRuleContexts(EstatutoContext.class);
		}
		public EstatutoContext estatuto(int i) {
			return getRuleContext(EstatutoContext.class,i);
		}
		public BloqueContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_bloque; }
	}

	public final BloqueContext bloque() throws RecognitionException {
		BloqueContext _localctx = new BloqueContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_bloque);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(90);
			match(OPEN_CURLY);
			setState(94);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << FUNC) | (1L << VAR) | (1L << IF) | (1L << WHILE) | (1L << FOR) | (1L << OPEN_PAREN) | (1L << ID))) != 0)) {
				{
				{
				setState(91);
				estatuto();
				}
				}
				setState(96);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(97);
			match(CLOSE_CURLY);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class EstatutoContext extends ParserRuleContext {
		public VariableContext variable() {
			return getRuleContext(VariableContext.class,0);
		}
		public AsignacionContext asignacion() {
			return getRuleContext(AsignacionContext.class,0);
		}
		public CondicionContext condicion() {
			return getRuleContext(CondicionContext.class,0);
		}
		public ImprimirContext imprimir() {
			return getRuleContext(ImprimirContext.class,0);
		}
		public CicloContext ciclo() {
			return getRuleContext(CicloContext.class,0);
		}
		public FuncionContext funcion() {
			return getRuleContext(FuncionContext.class,0);
		}
		public EstatutoContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_estatuto; }
	}

	public final EstatutoContext estatuto() throws RecognitionException {
		EstatutoContext _localctx = new EstatutoContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_estatuto);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(105);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case VAR:
				{
				setState(99);
				variable();
				}
				break;
			case ID:
				{
				setState(100);
				asignacion();
				}
				break;
			case IF:
				{
				setState(101);
				condicion();
				}
				break;
			case OPEN_PAREN:
				{
				setState(102);
				imprimir();
				}
				break;
			case WHILE:
			case FOR:
				{
				setState(103);
				ciclo();
				}
				break;
			case FUNC:
				{
				setState(104);
				funcion();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpresionContext extends ParserRuleContext {
		public List<ExpContext> exp() {
			return getRuleContexts(ExpContext.class);
		}
		public ExpContext exp(int i) {
			return getRuleContext(ExpContext.class,i);
		}
		public TerminalNode LESS_THAN() { return getToken(MapacheParser.LESS_THAN, 0); }
		public TerminalNode GREATER_THAN() { return getToken(MapacheParser.GREATER_THAN, 0); }
		public TerminalNode EQUAL() { return getToken(MapacheParser.EQUAL, 0); }
		public TerminalNode NOT_EQUAL() { return getToken(MapacheParser.NOT_EQUAL, 0); }
		public TerminalNode AND() { return getToken(MapacheParser.AND, 0); }
		public TerminalNode OR() { return getToken(MapacheParser.OR, 0); }
		public ExpresionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expresion; }
	}

	public final ExpresionContext expresion() throws RecognitionException {
		ExpresionContext _localctx = new ExpresionContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_expresion);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(107);
			exp();
			setState(110);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << EQUAL) | (1L << NOT_EQUAL) | (1L << LESS_THAN) | (1L << GREATER_THAN) | (1L << AND) | (1L << OR))) != 0)) {
				{
				setState(108);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << EQUAL) | (1L << NOT_EQUAL) | (1L << LESS_THAN) | (1L << GREATER_THAN) | (1L << AND) | (1L << OR))) != 0)) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(109);
				exp();
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpContext extends ParserRuleContext {
		public List<TerminoContext> termino() {
			return getRuleContexts(TerminoContext.class);
		}
		public TerminoContext termino(int i) {
			return getRuleContext(TerminoContext.class,i);
		}
		public TerminalNode PLUS() { return getToken(MapacheParser.PLUS, 0); }
		public TerminalNode MINUS() { return getToken(MapacheParser.MINUS, 0); }
		public ExpContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_exp; }
	}

	public final ExpContext exp() throws RecognitionException {
		ExpContext _localctx = new ExpContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_exp);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(112);
			termino();
			setState(115);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==PLUS || _la==MINUS) {
				{
				setState(113);
				_la = _input.LA(1);
				if ( !(_la==PLUS || _la==MINUS) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(114);
				termino();
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TerminoContext extends ParserRuleContext {
		public List<FactorContext> factor() {
			return getRuleContexts(FactorContext.class);
		}
		public FactorContext factor(int i) {
			return getRuleContext(FactorContext.class,i);
		}
		public TerminalNode MULTIPLY() { return getToken(MapacheParser.MULTIPLY, 0); }
		public TerminalNode DIVISION() { return getToken(MapacheParser.DIVISION, 0); }
		public TerminoContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_termino; }
	}

	public final TerminoContext termino() throws RecognitionException {
		TerminoContext _localctx = new TerminoContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_termino);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(117);
			factor();
			setState(120);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==MULTIPLY || _la==DIVISION) {
				{
				setState(118);
				_la = _input.LA(1);
				if ( !(_la==MULTIPLY || _la==DIVISION) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(119);
				factor();
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LlamadaContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(MapacheParser.ID, 0); }
		public TerminalNode OPEN_PAREN() { return getToken(MapacheParser.OPEN_PAREN, 0); }
		public TerminalNode CLOSE_PAREN() { return getToken(MapacheParser.CLOSE_PAREN, 0); }
		public TerminalNode SEMICOLON() { return getToken(MapacheParser.SEMICOLON, 0); }
		public List<ExpresionContext> expresion() {
			return getRuleContexts(ExpresionContext.class);
		}
		public ExpresionContext expresion(int i) {
			return getRuleContext(ExpresionContext.class,i);
		}
		public List<TerminalNode> COMMA() { return getTokens(MapacheParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(MapacheParser.COMMA, i);
		}
		public LlamadaContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_llamada; }
	}

	public final LlamadaContext llamada() throws RecognitionException {
		LlamadaContext _localctx = new LlamadaContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_llamada);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(122);
			match(ID);
			setState(123);
			match(OPEN_PAREN);
			setState(132);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << MINUS) | (1L << OPEN_PAREN) | (1L << CONST_I) | (1L << CONST_F) | (1L << CONST_B) | (1L << CONST_C) | (1L << ID))) != 0)) {
				{
				setState(124);
				expresion();
				setState(129);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMMA) {
					{
					{
					setState(125);
					match(COMMA);
					setState(126);
					expresion();
					}
					}
					setState(131);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(134);
			match(CLOSE_PAREN);
			setState(135);
			match(SEMICOLON);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FactorContext extends ParserRuleContext {
		public TerminalNode OPEN_PAREN() { return getToken(MapacheParser.OPEN_PAREN, 0); }
		public List<ExpContext> exp() {
			return getRuleContexts(ExpContext.class);
		}
		public ExpContext exp(int i) {
			return getRuleContext(ExpContext.class,i);
		}
		public TerminalNode CLOSE_PAREN() { return getToken(MapacheParser.CLOSE_PAREN, 0); }
		public CteContext cte() {
			return getRuleContext(CteContext.class,0);
		}
		public TerminalNode ID() { return getToken(MapacheParser.ID, 0); }
		public TerminalNode OPEN_BRACKET() { return getToken(MapacheParser.OPEN_BRACKET, 0); }
		public TerminalNode CLOSE_BRACKET() { return getToken(MapacheParser.CLOSE_BRACKET, 0); }
		public List<TerminalNode> COMMA() { return getTokens(MapacheParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(MapacheParser.COMMA, i);
		}
		public FactorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_factor; }
	}

	public final FactorContext factor() throws RecognitionException {
		FactorContext _localctx = new FactorContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_factor);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(160);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case OPEN_PAREN:
				{
				setState(137);
				match(OPEN_PAREN);
				setState(138);
				exp();
				setState(139);
				match(CLOSE_PAREN);
				}
				break;
			case MINUS:
			case CONST_I:
			case CONST_F:
			case CONST_B:
			case CONST_C:
				{
				setState(141);
				cte();
				}
				break;
			case ID:
				{
				setState(142);
				match(ID);
				setState(158);
				_errHandler.sync(this);
				switch (_input.LA(1)) {
				case OPEN_BRACKET:
					{
					setState(143);
					match(OPEN_BRACKET);
					setState(144);
					exp();
					setState(145);
					match(CLOSE_BRACKET);
					}
					break;
				case OPEN_PAREN:
					{
					setState(147);
					match(OPEN_PAREN);
					setState(148);
					exp();
					setState(153);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while (_la==COMMA) {
						{
						{
						setState(149);
						match(COMMA);
						setState(150);
						exp();
						}
						}
						setState(155);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					setState(156);
					match(CLOSE_PAREN);
					}
					break;
				case DOTS:
				case BY:
				case PLUS:
				case MINUS:
				case MULTIPLY:
				case DIVISION:
				case EQUAL:
				case NOT_EQUAL:
				case LESS_THAN:
				case GREATER_THAN:
				case AND:
				case OR:
				case CLOSE_BRACKET:
				case CLOSE_PAREN:
				case OPEN_CURLY:
				case COMMA:
				case SEMICOLON:
					break;
				default:
					break;
				}
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class CicloContext extends ParserRuleContext {
		public CicloWhileContext cicloWhile() {
			return getRuleContext(CicloWhileContext.class,0);
		}
		public CicloForContext cicloFor() {
			return getRuleContext(CicloForContext.class,0);
		}
		public CicloContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ciclo; }
	}

	public final CicloContext ciclo() throws RecognitionException {
		CicloContext _localctx = new CicloContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_ciclo);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(164);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case WHILE:
				{
				setState(162);
				cicloWhile();
				}
				break;
			case FOR:
				{
				setState(163);
				cicloFor();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class CicloWhileContext extends ParserRuleContext {
		public TerminalNode WHILE() { return getToken(MapacheParser.WHILE, 0); }
		public ExpresionContext expresion() {
			return getRuleContext(ExpresionContext.class,0);
		}
		public BloqueContext bloque() {
			return getRuleContext(BloqueContext.class,0);
		}
		public CicloWhileContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_cicloWhile; }
	}

	public final CicloWhileContext cicloWhile() throws RecognitionException {
		CicloWhileContext _localctx = new CicloWhileContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_cicloWhile);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(166);
			match(WHILE);
			setState(167);
			expresion();
			setState(168);
			bloque();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class CicloForContext extends ParserRuleContext {
		public TerminalNode FOR() { return getToken(MapacheParser.FOR, 0); }
		public TerminalNode ID() { return getToken(MapacheParser.ID, 0); }
		public TerminalNode IN() { return getToken(MapacheParser.IN, 0); }
		public List<ExpContext> exp() {
			return getRuleContexts(ExpContext.class);
		}
		public ExpContext exp(int i) {
			return getRuleContext(ExpContext.class,i);
		}
		public TerminalNode DOTS() { return getToken(MapacheParser.DOTS, 0); }
		public TerminalNode BY() { return getToken(MapacheParser.BY, 0); }
		public BloqueContext bloque() {
			return getRuleContext(BloqueContext.class,0);
		}
		public CicloForContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_cicloFor; }
	}

	public final CicloForContext cicloFor() throws RecognitionException {
		CicloForContext _localctx = new CicloForContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_cicloFor);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(170);
			match(FOR);
			setState(171);
			match(ID);
			setState(172);
			match(IN);
			setState(173);
			exp();
			setState(174);
			match(DOTS);
			setState(175);
			exp();
			setState(176);
			match(BY);
			setState(177);
			exp();
			setState(178);
			bloque();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ImprimirContext extends ParserRuleContext {
		public TerminalNode OPEN_PAREN() { return getToken(MapacheParser.OPEN_PAREN, 0); }
		public TerminalNode CLOSE_PAREN() { return getToken(MapacheParser.CLOSE_PAREN, 0); }
		public TerminalNode SEMICOLON() { return getToken(MapacheParser.SEMICOLON, 0); }
		public ExpContext exp() {
			return getRuleContext(ExpContext.class,0);
		}
		public ImprimirContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_imprimir; }
	}

	public final ImprimirContext imprimir() throws RecognitionException {
		ImprimirContext _localctx = new ImprimirContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_imprimir);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(180);
			match(OPEN_PAREN);
			setState(183);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case MINUS:
			case OPEN_PAREN:
			case CONST_I:
			case CONST_F:
			case CONST_B:
			case CONST_C:
			case ID:
				{
				setState(181);
				exp();
				}
				break;
			case CLOSE_PAREN:
				{
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(185);
			match(CLOSE_PAREN);
			setState(186);
			match(SEMICOLON);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TipoContext extends ParserRuleContext {
		public TerminalNode INT() { return getToken(MapacheParser.INT, 0); }
		public TerminalNode FLOAT() { return getToken(MapacheParser.FLOAT, 0); }
		public TerminalNode BOOL() { return getToken(MapacheParser.BOOL, 0); }
		public TerminalNode CHAR() { return getToken(MapacheParser.CHAR, 0); }
		public TipoContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_tipo; }
	}

	public final TipoContext tipo() throws RecognitionException {
		TipoContext _localctx = new TipoContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_tipo);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(188);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << INT) | (1L << CHAR) | (1L << FLOAT) | (1L << BOOL))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class CteContext extends ParserRuleContext {
		public TerminalNode CONST_B() { return getToken(MapacheParser.CONST_B, 0); }
		public TerminalNode CONST_C() { return getToken(MapacheParser.CONST_C, 0); }
		public TerminalNode CONST_F() { return getToken(MapacheParser.CONST_F, 0); }
		public TerminalNode MINUS() { return getToken(MapacheParser.MINUS, 0); }
		public TerminalNode CONST_I() { return getToken(MapacheParser.CONST_I, 0); }
		public CteContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_cte; }
	}

	public final CteContext cte() throws RecognitionException {
		CteContext _localctx = new CteContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_cte);
		int _la;
		try {
			setState(200);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,19,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(190);
				match(CONST_B);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(191);
				match(CONST_C);
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				{
				setState(193);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==MINUS) {
					{
					setState(192);
					match(MINUS);
					}
				}

				setState(195);
				match(CONST_F);
				}
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				{
				setState(197);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==MINUS) {
					{
					setState(196);
					match(MINUS);
					}
				}

				setState(199);
				match(CONST_I);
				}
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\64\u00cd\4\2\t\2"+
		"\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\3\2\6\2*\n\2\r\2\16\2+\3\2\3\2\3\3\3\3\3\3\3\4\3"+
		"\4\3\4\3\4\3\4\5\48\n\4\3\4\3\4\3\4\3\4\3\5\3\5\3\5\3\5\3\5\3\5\3\5\5"+
		"\5E\n\5\3\6\3\6\3\6\3\6\3\6\5\6L\n\6\3\6\3\6\3\6\3\6\3\7\3\7\3\7\3\7\3"+
		"\7\3\7\3\7\5\7Y\n\7\3\7\3\7\3\b\3\b\7\b_\n\b\f\b\16\bb\13\b\3\b\3\b\3"+
		"\t\3\t\3\t\3\t\3\t\3\t\5\tl\n\t\3\n\3\n\3\n\5\nq\n\n\3\13\3\13\3\13\5"+
		"\13v\n\13\3\f\3\f\3\f\5\f{\n\f\3\r\3\r\3\r\3\r\3\r\7\r\u0082\n\r\f\r\16"+
		"\r\u0085\13\r\5\r\u0087\n\r\3\r\3\r\3\r\3\16\3\16\3\16\3\16\3\16\3\16"+
		"\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\7\16\u009a\n\16\f\16\16\16\u009d"+
		"\13\16\3\16\3\16\5\16\u00a1\n\16\5\16\u00a3\n\16\3\17\3\17\5\17\u00a7"+
		"\n\17\3\20\3\20\3\20\3\20\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\22\3\22\3\22\5\22\u00ba\n\22\3\22\3\22\3\22\3\23\3\23\3\24\3\24"+
		"\3\24\5\24\u00c4\n\24\3\24\3\24\5\24\u00c8\n\24\3\24\5\24\u00cb\n\24\3"+
		"\24\2\2\25\2\4\6\b\n\f\16\20\22\24\26\30\32\34\36 \"$&\2\6\4\2\31\31\33"+
		"\37\3\2\24\25\3\2\26\27\3\2\4\7\2\u00d5\2)\3\2\2\2\4/\3\2\2\2\6\62\3\2"+
		"\2\2\b=\3\2\2\2\nF\3\2\2\2\fQ\3\2\2\2\16\\\3\2\2\2\20k\3\2\2\2\22m\3\2"+
		"\2\2\24r\3\2\2\2\26w\3\2\2\2\30|\3\2\2\2\32\u00a2\3\2\2\2\34\u00a6\3\2"+
		"\2\2\36\u00a8\3\2\2\2 \u00ac\3\2\2\2\"\u00b6\3\2\2\2$\u00be\3\2\2\2&\u00ca"+
		"\3\2\2\2(*\5\4\3\2)(\3\2\2\2*+\3\2\2\2+)\3\2\2\2+,\3\2\2\2,-\3\2\2\2-"+
		".\7\2\2\3.\3\3\2\2\2/\60\7\3\2\2\60\61\5\16\b\2\61\5\3\2\2\2\62\67\7\62"+
		"\2\2\63\64\7 \2\2\64\65\5\24\13\2\65\66\7!\2\2\668\3\2\2\2\67\63\3\2\2"+
		"\2\678\3\2\2\289\3\2\2\29:\7\30\2\2:;\5\22\n\2;<\7)\2\2<\7\3\2\2\2=>\7"+
		"\r\2\2>?\7\"\2\2?@\5\22\n\2@A\7#\2\2AD\5\16\b\2BC\7\16\2\2CE\5\16\b\2"+
		"DB\3\2\2\2DE\3\2\2\2E\t\3\2\2\2FG\7\13\2\2GK\7\62\2\2HI\7 \2\2IJ\7.\2"+
		"\2JL\7!\2\2KH\3\2\2\2KL\3\2\2\2LM\3\2\2\2MN\7\'\2\2NO\5$\23\2OP\7)\2\2"+
		"P\13\3\2\2\2QR\7\t\2\2RS\7\62\2\2ST\7\"\2\2TU\7#\2\2UX\7*\2\2VY\7\b\2"+
		"\2WY\5$\23\2XV\3\2\2\2XW\3\2\2\2YZ\3\2\2\2Z[\5\16\b\2[\r\3\2\2\2\\`\7"+
		"$\2\2]_\5\20\t\2^]\3\2\2\2_b\3\2\2\2`^\3\2\2\2`a\3\2\2\2ac\3\2\2\2b`\3"+
		"\2\2\2cd\7%\2\2d\17\3\2\2\2el\5\n\6\2fl\5\6\4\2gl\5\b\5\2hl\5\"\22\2i"+
		"l\5\34\17\2jl\5\f\7\2ke\3\2\2\2kf\3\2\2\2kg\3\2\2\2kh\3\2\2\2ki\3\2\2"+
		"\2kj\3\2\2\2l\21\3\2\2\2mp\5\24\13\2no\t\2\2\2oq\5\24\13\2pn\3\2\2\2p"+
		"q\3\2\2\2q\23\3\2\2\2ru\5\26\f\2st\t\3\2\2tv\5\26\f\2us\3\2\2\2uv\3\2"+
		"\2\2v\25\3\2\2\2wz\5\32\16\2xy\t\4\2\2y{\5\32\16\2zx\3\2\2\2z{\3\2\2\2"+
		"{\27\3\2\2\2|}\7\62\2\2}\u0086\7\"\2\2~\u0083\5\22\n\2\177\u0080\7&\2"+
		"\2\u0080\u0082\5\22\n\2\u0081\177\3\2\2\2\u0082\u0085\3\2\2\2\u0083\u0081"+
		"\3\2\2\2\u0083\u0084\3\2\2\2\u0084\u0087\3\2\2\2\u0085\u0083\3\2\2\2\u0086"+
		"~\3\2\2\2\u0086\u0087\3\2\2\2\u0087\u0088\3\2\2\2\u0088\u0089\7#\2\2\u0089"+
		"\u008a\7)\2\2\u008a\31\3\2\2\2\u008b\u008c\7\"\2\2\u008c\u008d\5\24\13"+
		"\2\u008d\u008e\7#\2\2\u008e\u00a3\3\2\2\2\u008f\u00a3\5&\24\2\u0090\u00a0"+
		"\7\62\2\2\u0091\u0092\7 \2\2\u0092\u0093\5\24\13\2\u0093\u0094\7!\2\2"+
		"\u0094\u00a1\3\2\2\2\u0095\u0096\7\"\2\2\u0096\u009b\5\24\13\2\u0097\u0098"+
		"\7&\2\2\u0098\u009a\5\24\13\2\u0099\u0097\3\2\2\2\u009a\u009d\3\2\2\2"+
		"\u009b\u0099\3\2\2\2\u009b\u009c\3\2\2\2\u009c\u009e\3\2\2\2\u009d\u009b"+
		"\3\2\2\2\u009e\u009f\7#\2\2\u009f\u00a1\3\2\2\2\u00a0\u0091\3\2\2\2\u00a0"+
		"\u0095\3\2\2\2\u00a0\u00a1\3\2\2\2\u00a1\u00a3\3\2\2\2\u00a2\u008b\3\2"+
		"\2\2\u00a2\u008f\3\2\2\2\u00a2\u0090\3\2\2\2\u00a3\33\3\2\2\2\u00a4\u00a7"+
		"\5\36\20\2\u00a5\u00a7\5 \21\2\u00a6\u00a4\3\2\2\2\u00a6\u00a5\3\2\2\2"+
		"\u00a7\35\3\2\2\2\u00a8\u00a9\7\17\2\2\u00a9\u00aa\5\22\n\2\u00aa\u00ab"+
		"\5\16\b\2\u00ab\37\3\2\2\2\u00ac\u00ad\7\20\2\2\u00ad\u00ae\7\62\2\2\u00ae"+
		"\u00af\7\21\2\2\u00af\u00b0\5\24\13\2\u00b0\u00b1\7\22\2\2\u00b1\u00b2"+
		"\5\24\13\2\u00b2\u00b3\7\23\2\2\u00b3\u00b4\5\24\13\2\u00b4\u00b5\5\16"+
		"\b\2\u00b5!\3\2\2\2\u00b6\u00b9\7\"\2\2\u00b7\u00ba\5\24\13\2\u00b8\u00ba"+
		"\3\2\2\2\u00b9\u00b7\3\2\2\2\u00b9\u00b8\3\2\2\2\u00ba\u00bb\3\2\2\2\u00bb"+
		"\u00bc\7#\2\2\u00bc\u00bd\7)\2\2\u00bd#\3\2\2\2\u00be\u00bf\t\5\2\2\u00bf"+
		"%\3\2\2\2\u00c0\u00cb\7\60\2\2\u00c1\u00cb\7\61\2\2\u00c2\u00c4\7\25\2"+
		"\2\u00c3\u00c2\3\2\2\2\u00c3\u00c4\3\2\2\2\u00c4\u00c5\3\2\2\2\u00c5\u00cb"+
		"\7/\2\2\u00c6\u00c8\7\25\2\2\u00c7\u00c6\3\2\2\2\u00c7\u00c8\3\2\2\2\u00c8"+
		"\u00c9\3\2\2\2\u00c9\u00cb\7.\2\2\u00ca\u00c0\3\2\2\2\u00ca\u00c1\3\2"+
		"\2\2\u00ca\u00c3\3\2\2\2\u00ca\u00c7\3\2\2\2\u00cb\'\3\2\2\2\26+\67DK"+
		"X`kpuz\u0083\u0086\u009b\u00a0\u00a2\u00a6\u00b9\u00c3\u00c7\u00ca";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}