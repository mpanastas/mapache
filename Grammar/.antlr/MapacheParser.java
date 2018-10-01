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
		COLON=37, DOT=38, SEMICOLON=39, ARROW=40, TRUE=41, FALSE=42, TEXT=43, 
		CONST_I=44, CONST_F=45, CONST_B=46, CONST_C=47, ID=48, WS=49;
	public static final int
		RULE_mapache = 0, RULE_program = 1, RULE_asignacion = 2, RULE_llamada = 3, 
		RULE_condicion = 4, RULE_variable = 5, RULE_funcion = 6, RULE_bloque = 7, 
		RULE_bloquefunc = 8, RULE_estatuto = 9, RULE_expresion = 10, RULE_exp = 11, 
		RULE_termino = 12, RULE_factor = 13, RULE_vector = 14, RULE_ciclo = 15, 
		RULE_cicloWhile = 16, RULE_cicloFor = 17, RULE_imprimir = 18, RULE_tipo = 19, 
		RULE_cte = 20;
	public static final String[] ruleNames = {
		"mapache", "program", "asignacion", "llamada", "condicion", "variable", 
		"funcion", "bloque", "bloquefunc", "estatuto", "expresion", "exp", "termino", 
		"factor", "vector", "ciclo", "cicloWhile", "cicloFor", "imprimir", "tipo", 
		"cte"
	};

	private static final String[] _LITERAL_NAMES = {
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, "MAPACHE", "INT", "CHAR", "FLOAT", "BOOL", "VOID", "FUNC", "RETURN", 
		"VAR", "PRINT", "IF", "ELSE", "WHILE", "FOR", "IN", "DOTS", "BY", "PLUS", 
		"MINUS", "MULTIPLY", "DIVISION", "ASSIGN", "EQUAL", "NOT", "NOT_EQUAL", 
		"LESS_THAN", "GREATER_THAN", "AND", "OR", "OPEN_BRACKET", "CLOSE_BRACKET", 
		"OPEN_PAREN", "CLOSE_PAREN", "OPEN_CURLY", "CLOSE_CURLY", "COMMA", "COLON", 
		"DOT", "SEMICOLON", "ARROW", "TRUE", "FALSE", "TEXT", "CONST_I", "CONST_F", 
		"CONST_B", "CONST_C", "ID", "WS"
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
			setState(43); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(42);
				program();
				}
				}
				setState(45); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==MAPACHE );
			setState(47);
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
			setState(49);
			match(MAPACHE);
			setState(50);
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
			setState(52);
			match(ID);
			setState(57);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==OPEN_BRACKET) {
				{
				setState(53);
				match(OPEN_BRACKET);
				setState(54);
				exp();
				setState(55);
				match(CLOSE_BRACKET);
				}
			}

			setState(59);
			match(ASSIGN);
			setState(60);
			expresion();
			setState(61);
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

	public static class LlamadaContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(MapacheParser.ID, 0); }
		public TerminalNode OPEN_PAREN() { return getToken(MapacheParser.OPEN_PAREN, 0); }
		public TerminalNode CLOSE_PAREN() { return getToken(MapacheParser.CLOSE_PAREN, 0); }
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
		enterRule(_localctx, 6, RULE_llamada);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(63);
			match(ID);
			setState(64);
			match(OPEN_PAREN);
			setState(73);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << MINUS) | (1L << OPEN_PAREN) | (1L << CONST_I) | (1L << CONST_F) | (1L << CONST_B) | (1L << CONST_C) | (1L << ID))) != 0)) {
				{
				setState(65);
				expresion();
				setState(70);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMMA) {
					{
					{
					setState(66);
					match(COMMA);
					setState(67);
					expresion();
					}
					}
					setState(72);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(75);
			match(CLOSE_PAREN);
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
		enterRule(_localctx, 8, RULE_condicion);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(77);
			match(IF);
			setState(78);
			match(OPEN_PAREN);
			setState(79);
			expresion();
			setState(80);
			match(CLOSE_PAREN);
			setState(81);
			bloque();
			setState(84);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ELSE) {
				{
				setState(82);
				match(ELSE);
				setState(83);
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
		enterRule(_localctx, 10, RULE_variable);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(86);
			match(VAR);
			setState(87);
			match(ID);
			setState(91);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==OPEN_BRACKET) {
				{
				setState(88);
				match(OPEN_BRACKET);
				setState(89);
				match(CONST_I);
				setState(90);
				match(CLOSE_BRACKET);
				}
			}

			setState(93);
			match(COLON);
			setState(94);
			tipo();
			setState(95);
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
		public List<TerminalNode> ID() { return getTokens(MapacheParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(MapacheParser.ID, i);
		}
		public TerminalNode OPEN_PAREN() { return getToken(MapacheParser.OPEN_PAREN, 0); }
		public TerminalNode CLOSE_PAREN() { return getToken(MapacheParser.CLOSE_PAREN, 0); }
		public TerminalNode ARROW() { return getToken(MapacheParser.ARROW, 0); }
		public BloquefuncContext bloquefunc() {
			return getRuleContext(BloquefuncContext.class,0);
		}
		public TerminalNode VOID() { return getToken(MapacheParser.VOID, 0); }
		public List<TipoContext> tipo() {
			return getRuleContexts(TipoContext.class);
		}
		public TipoContext tipo(int i) {
			return getRuleContext(TipoContext.class,i);
		}
		public List<TerminalNode> COLON() { return getTokens(MapacheParser.COLON); }
		public TerminalNode COLON(int i) {
			return getToken(MapacheParser.COLON, i);
		}
		public List<TerminalNode> COMMA() { return getTokens(MapacheParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(MapacheParser.COMMA, i);
		}
		public FuncionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_funcion; }
	}

	public final FuncionContext funcion() throws RecognitionException {
		FuncionContext _localctx = new FuncionContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_funcion);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(97);
			match(FUNC);
			setState(98);
			match(ID);
			setState(99);
			match(OPEN_PAREN);
			setState(112);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ID) {
				{
				setState(100);
				match(ID);
				setState(101);
				match(COLON);
				setState(102);
				tipo();
				setState(109);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMMA) {
					{
					{
					setState(103);
					match(COMMA);
					setState(104);
					match(ID);
					setState(105);
					match(COLON);
					setState(106);
					tipo();
					}
					}
					setState(111);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(114);
			match(CLOSE_PAREN);
			setState(115);
			match(ARROW);
			setState(118);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case VOID:
				{
				setState(116);
				match(VOID);
				}
				break;
			case INT:
			case CHAR:
			case FLOAT:
			case BOOL:
				{
				setState(117);
				tipo();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(120);
			bloquefunc();
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
		enterRule(_localctx, 14, RULE_bloque);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(122);
			match(OPEN_CURLY);
			setState(126);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << FUNC) | (1L << VAR) | (1L << PRINT) | (1L << IF) | (1L << WHILE) | (1L << FOR) | (1L << ID))) != 0)) {
				{
				{
				setState(123);
				estatuto();
				}
				}
				setState(128);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(129);
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

	public static class BloquefuncContext extends ParserRuleContext {
		public TerminalNode OPEN_CURLY() { return getToken(MapacheParser.OPEN_CURLY, 0); }
		public TerminalNode CLOSE_CURLY() { return getToken(MapacheParser.CLOSE_CURLY, 0); }
		public List<EstatutoContext> estatuto() {
			return getRuleContexts(EstatutoContext.class);
		}
		public EstatutoContext estatuto(int i) {
			return getRuleContext(EstatutoContext.class,i);
		}
		public TerminalNode RETURN() { return getToken(MapacheParser.RETURN, 0); }
		public ExpresionContext expresion() {
			return getRuleContext(ExpresionContext.class,0);
		}
		public BloquefuncContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_bloquefunc; }
	}

	public final BloquefuncContext bloquefunc() throws RecognitionException {
		BloquefuncContext _localctx = new BloquefuncContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_bloquefunc);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(131);
			match(OPEN_CURLY);
			setState(135);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << FUNC) | (1L << VAR) | (1L << PRINT) | (1L << IF) | (1L << WHILE) | (1L << FOR) | (1L << ID))) != 0)) {
				{
				{
				setState(132);
				estatuto();
				}
				}
				setState(137);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(140);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==RETURN) {
				{
				setState(138);
				match(RETURN);
				setState(139);
				expresion();
				}
			}

			setState(142);
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
		public LlamadaContext llamada() {
			return getRuleContext(LlamadaContext.class,0);
		}
		public TerminalNode SEMICOLON() { return getToken(MapacheParser.SEMICOLON, 0); }
		public EstatutoContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_estatuto; }
	}

	public final EstatutoContext estatuto() throws RecognitionException {
		EstatutoContext _localctx = new EstatutoContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_estatuto);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(153);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,12,_ctx) ) {
			case 1:
				{
				setState(144);
				variable();
				}
				break;
			case 2:
				{
				setState(145);
				asignacion();
				}
				break;
			case 3:
				{
				setState(146);
				condicion();
				}
				break;
			case 4:
				{
				setState(147);
				imprimir();
				}
				break;
			case 5:
				{
				setState(148);
				ciclo();
				}
				break;
			case 6:
				{
				setState(149);
				funcion();
				}
				break;
			case 7:
				{
				{
				setState(150);
				llamada();
				setState(151);
				match(SEMICOLON);
				}
				}
				break;
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
		enterRule(_localctx, 20, RULE_expresion);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(155);
			exp();
			setState(158);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << EQUAL) | (1L << NOT_EQUAL) | (1L << LESS_THAN) | (1L << GREATER_THAN) | (1L << AND) | (1L << OR))) != 0)) {
				{
				setState(156);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << EQUAL) | (1L << NOT_EQUAL) | (1L << LESS_THAN) | (1L << GREATER_THAN) | (1L << AND) | (1L << OR))) != 0)) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(157);
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
		enterRule(_localctx, 22, RULE_exp);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(160);
			termino();
			setState(163);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==PLUS || _la==MINUS) {
				{
				setState(161);
				_la = _input.LA(1);
				if ( !(_la==PLUS || _la==MINUS) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(162);
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
		enterRule(_localctx, 24, RULE_termino);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(165);
			factor();
			setState(168);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==MULTIPLY || _la==DIVISION) {
				{
				setState(166);
				_la = _input.LA(1);
				if ( !(_la==MULTIPLY || _la==DIVISION) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(167);
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

	public static class FactorContext extends ParserRuleContext {
		public TerminalNode OPEN_PAREN() { return getToken(MapacheParser.OPEN_PAREN, 0); }
		public ExpContext exp() {
			return getRuleContext(ExpContext.class,0);
		}
		public TerminalNode CLOSE_PAREN() { return getToken(MapacheParser.CLOSE_PAREN, 0); }
		public VectorContext vector() {
			return getRuleContext(VectorContext.class,0);
		}
		public CteContext cte() {
			return getRuleContext(CteContext.class,0);
		}
		public LlamadaContext llamada() {
			return getRuleContext(LlamadaContext.class,0);
		}
		public TerminalNode ID() { return getToken(MapacheParser.ID, 0); }
		public FactorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_factor; }
	}

	public final FactorContext factor() throws RecognitionException {
		FactorContext _localctx = new FactorContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_factor);
		try {
			setState(178);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,16,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				{
				setState(170);
				match(OPEN_PAREN);
				setState(171);
				exp();
				setState(172);
				match(CLOSE_PAREN);
				}
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(174);
				vector();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(175);
				cte();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(176);
				llamada();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(177);
				match(ID);
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

	public static class VectorContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(MapacheParser.ID, 0); }
		public TerminalNode OPEN_BRACKET() { return getToken(MapacheParser.OPEN_BRACKET, 0); }
		public ExpContext exp() {
			return getRuleContext(ExpContext.class,0);
		}
		public TerminalNode CLOSE_BRACKET() { return getToken(MapacheParser.CLOSE_BRACKET, 0); }
		public VectorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_vector; }
	}

	public final VectorContext vector() throws RecognitionException {
		VectorContext _localctx = new VectorContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_vector);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(180);
			match(ID);
			setState(181);
			match(OPEN_BRACKET);
			setState(182);
			exp();
			setState(183);
			match(CLOSE_BRACKET);
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
		enterRule(_localctx, 30, RULE_ciclo);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(187);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case WHILE:
				{
				setState(185);
				cicloWhile();
				}
				break;
			case FOR:
				{
				setState(186);
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
		enterRule(_localctx, 32, RULE_cicloWhile);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(189);
			match(WHILE);
			setState(190);
			expresion();
			setState(191);
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
		enterRule(_localctx, 34, RULE_cicloFor);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(193);
			match(FOR);
			setState(194);
			match(ID);
			setState(195);
			match(IN);
			setState(196);
			exp();
			setState(197);
			match(DOTS);
			setState(198);
			exp();
			setState(199);
			match(BY);
			setState(200);
			exp();
			setState(201);
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
		public TerminalNode PRINT() { return getToken(MapacheParser.PRINT, 0); }
		public TerminalNode OPEN_PAREN() { return getToken(MapacheParser.OPEN_PAREN, 0); }
		public TerminalNode CLOSE_PAREN() { return getToken(MapacheParser.CLOSE_PAREN, 0); }
		public TerminalNode SEMICOLON() { return getToken(MapacheParser.SEMICOLON, 0); }
		public TerminalNode TEXT() { return getToken(MapacheParser.TEXT, 0); }
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
		enterRule(_localctx, 36, RULE_imprimir);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(203);
			match(PRINT);
			setState(204);
			match(OPEN_PAREN);
			setState(207);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case TEXT:
				{
				setState(205);
				match(TEXT);
				}
				break;
			case MINUS:
			case OPEN_PAREN:
			case CONST_I:
			case CONST_F:
			case CONST_B:
			case CONST_C:
			case ID:
				{
				setState(206);
				exp();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(209);
			match(CLOSE_PAREN);
			setState(210);
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
		enterRule(_localctx, 38, RULE_tipo);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(212);
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
		enterRule(_localctx, 40, RULE_cte);
		int _la;
		try {
			setState(224);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,21,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(214);
				match(CONST_B);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(215);
				match(CONST_C);
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				{
				setState(217);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==MINUS) {
					{
					setState(216);
					match(MINUS);
					}
				}

				setState(219);
				match(CONST_F);
				}
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				{
				setState(221);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==MINUS) {
					{
					setState(220);
					match(MINUS);
					}
				}

				setState(223);
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
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\63\u00e5\4\2\t\2"+
		"\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\3\2\6\2.\n\2\r\2\16\2/\3\2\3"+
		"\2\3\3\3\3\3\3\3\4\3\4\3\4\3\4\3\4\5\4<\n\4\3\4\3\4\3\4\3\4\3\5\3\5\3"+
		"\5\3\5\3\5\7\5G\n\5\f\5\16\5J\13\5\5\5L\n\5\3\5\3\5\3\6\3\6\3\6\3\6\3"+
		"\6\3\6\3\6\5\6W\n\6\3\7\3\7\3\7\3\7\3\7\5\7^\n\7\3\7\3\7\3\7\3\7\3\b\3"+
		"\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\7\bn\n\b\f\b\16\bq\13\b\5\bs\n\b\3"+
		"\b\3\b\3\b\3\b\5\by\n\b\3\b\3\b\3\t\3\t\7\t\177\n\t\f\t\16\t\u0082\13"+
		"\t\3\t\3\t\3\n\3\n\7\n\u0088\n\n\f\n\16\n\u008b\13\n\3\n\3\n\5\n\u008f"+
		"\n\n\3\n\3\n\3\13\3\13\3\13\3\13\3\13\3\13\3\13\3\13\3\13\5\13\u009c\n"+
		"\13\3\f\3\f\3\f\5\f\u00a1\n\f\3\r\3\r\3\r\5\r\u00a6\n\r\3\16\3\16\3\16"+
		"\5\16\u00ab\n\16\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\5\17\u00b5\n"+
		"\17\3\20\3\20\3\20\3\20\3\20\3\21\3\21\5\21\u00be\n\21\3\22\3\22\3\22"+
		"\3\22\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\24\3\24\3\24"+
		"\3\24\5\24\u00d2\n\24\3\24\3\24\3\24\3\25\3\25\3\26\3\26\3\26\5\26\u00dc"+
		"\n\26\3\26\3\26\5\26\u00e0\n\26\3\26\5\26\u00e3\n\26\3\26\2\2\27\2\4\6"+
		"\b\n\f\16\20\22\24\26\30\32\34\36 \"$&(*\2\6\4\2\31\31\33\37\3\2\24\25"+
		"\3\2\26\27\3\2\4\7\2\u00ef\2-\3\2\2\2\4\63\3\2\2\2\6\66\3\2\2\2\bA\3\2"+
		"\2\2\nO\3\2\2\2\fX\3\2\2\2\16c\3\2\2\2\20|\3\2\2\2\22\u0085\3\2\2\2\24"+
		"\u009b\3\2\2\2\26\u009d\3\2\2\2\30\u00a2\3\2\2\2\32\u00a7\3\2\2\2\34\u00b4"+
		"\3\2\2\2\36\u00b6\3\2\2\2 \u00bd\3\2\2\2\"\u00bf\3\2\2\2$\u00c3\3\2\2"+
		"\2&\u00cd\3\2\2\2(\u00d6\3\2\2\2*\u00e2\3\2\2\2,.\5\4\3\2-,\3\2\2\2./"+
		"\3\2\2\2/-\3\2\2\2/\60\3\2\2\2\60\61\3\2\2\2\61\62\7\2\2\3\62\3\3\2\2"+
		"\2\63\64\7\3\2\2\64\65\5\20\t\2\65\5\3\2\2\2\66;\7\62\2\2\678\7 \2\28"+
		"9\5\30\r\29:\7!\2\2:<\3\2\2\2;\67\3\2\2\2;<\3\2\2\2<=\3\2\2\2=>\7\30\2"+
		"\2>?\5\26\f\2?@\7)\2\2@\7\3\2\2\2AB\7\62\2\2BK\7\"\2\2CH\5\26\f\2DE\7"+
		"&\2\2EG\5\26\f\2FD\3\2\2\2GJ\3\2\2\2HF\3\2\2\2HI\3\2\2\2IL\3\2\2\2JH\3"+
		"\2\2\2KC\3\2\2\2KL\3\2\2\2LM\3\2\2\2MN\7#\2\2N\t\3\2\2\2OP\7\r\2\2PQ\7"+
		"\"\2\2QR\5\26\f\2RS\7#\2\2SV\5\20\t\2TU\7\16\2\2UW\5\20\t\2VT\3\2\2\2"+
		"VW\3\2\2\2W\13\3\2\2\2XY\7\13\2\2Y]\7\62\2\2Z[\7 \2\2[\\\7.\2\2\\^\7!"+
		"\2\2]Z\3\2\2\2]^\3\2\2\2^_\3\2\2\2_`\7\'\2\2`a\5(\25\2ab\7)\2\2b\r\3\2"+
		"\2\2cd\7\t\2\2de\7\62\2\2er\7\"\2\2fg\7\62\2\2gh\7\'\2\2ho\5(\25\2ij\7"+
		"&\2\2jk\7\62\2\2kl\7\'\2\2ln\5(\25\2mi\3\2\2\2nq\3\2\2\2om\3\2\2\2op\3"+
		"\2\2\2ps\3\2\2\2qo\3\2\2\2rf\3\2\2\2rs\3\2\2\2st\3\2\2\2tu\7#\2\2ux\7"+
		"*\2\2vy\7\b\2\2wy\5(\25\2xv\3\2\2\2xw\3\2\2\2yz\3\2\2\2z{\5\22\n\2{\17"+
		"\3\2\2\2|\u0080\7$\2\2}\177\5\24\13\2~}\3\2\2\2\177\u0082\3\2\2\2\u0080"+
		"~\3\2\2\2\u0080\u0081\3\2\2\2\u0081\u0083\3\2\2\2\u0082\u0080\3\2\2\2"+
		"\u0083\u0084\7%\2\2\u0084\21\3\2\2\2\u0085\u0089\7$\2\2\u0086\u0088\5"+
		"\24\13\2\u0087\u0086\3\2\2\2\u0088\u008b\3\2\2\2\u0089\u0087\3\2\2\2\u0089"+
		"\u008a\3\2\2\2\u008a\u008e\3\2\2\2\u008b\u0089\3\2\2\2\u008c\u008d\7\n"+
		"\2\2\u008d\u008f\5\26\f\2\u008e\u008c\3\2\2\2\u008e\u008f\3\2\2\2\u008f"+
		"\u0090\3\2\2\2\u0090\u0091\7%\2\2\u0091\23\3\2\2\2\u0092\u009c\5\f\7\2"+
		"\u0093\u009c\5\6\4\2\u0094\u009c\5\n\6\2\u0095\u009c\5&\24\2\u0096\u009c"+
		"\5 \21\2\u0097\u009c\5\16\b\2\u0098\u0099\5\b\5\2\u0099\u009a\7)\2\2\u009a"+
		"\u009c\3\2\2\2\u009b\u0092\3\2\2\2\u009b\u0093\3\2\2\2\u009b\u0094\3\2"+
		"\2\2\u009b\u0095\3\2\2\2\u009b\u0096\3\2\2\2\u009b\u0097\3\2\2\2\u009b"+
		"\u0098\3\2\2\2\u009c\25\3\2\2\2\u009d\u00a0\5\30\r\2\u009e\u009f\t\2\2"+
		"\2\u009f\u00a1\5\30\r\2\u00a0\u009e\3\2\2\2\u00a0\u00a1\3\2\2\2\u00a1"+
		"\27\3\2\2\2\u00a2\u00a5\5\32\16\2\u00a3\u00a4\t\3\2\2\u00a4\u00a6\5\32"+
		"\16\2\u00a5\u00a3\3\2\2\2\u00a5\u00a6\3\2\2\2\u00a6\31\3\2\2\2\u00a7\u00aa"+
		"\5\34\17\2\u00a8\u00a9\t\4\2\2\u00a9\u00ab\5\34\17\2\u00aa\u00a8\3\2\2"+
		"\2\u00aa\u00ab\3\2\2\2\u00ab\33\3\2\2\2\u00ac\u00ad\7\"\2\2\u00ad\u00ae"+
		"\5\30\r\2\u00ae\u00af\7#\2\2\u00af\u00b5\3\2\2\2\u00b0\u00b5\5\36\20\2"+
		"\u00b1\u00b5\5*\26\2\u00b2\u00b5\5\b\5\2\u00b3\u00b5\7\62\2\2\u00b4\u00ac"+
		"\3\2\2\2\u00b4\u00b0\3\2\2\2\u00b4\u00b1\3\2\2\2\u00b4\u00b2\3\2\2\2\u00b4"+
		"\u00b3\3\2\2\2\u00b5\35\3\2\2\2\u00b6\u00b7\7\62\2\2\u00b7\u00b8\7 \2"+
		"\2\u00b8\u00b9\5\30\r\2\u00b9\u00ba\7!\2\2\u00ba\37\3\2\2\2\u00bb\u00be"+
		"\5\"\22\2\u00bc\u00be\5$\23\2\u00bd\u00bb\3\2\2\2\u00bd\u00bc\3\2\2\2"+
		"\u00be!\3\2\2\2\u00bf\u00c0\7\17\2\2\u00c0\u00c1\5\26\f\2\u00c1\u00c2"+
		"\5\20\t\2\u00c2#\3\2\2\2\u00c3\u00c4\7\20\2\2\u00c4\u00c5\7\62\2\2\u00c5"+
		"\u00c6\7\21\2\2\u00c6\u00c7\5\30\r\2\u00c7\u00c8\7\22\2\2\u00c8\u00c9"+
		"\5\30\r\2\u00c9\u00ca\7\23\2\2\u00ca\u00cb\5\30\r\2\u00cb\u00cc\5\20\t"+
		"\2\u00cc%\3\2\2\2\u00cd\u00ce\7\f\2\2\u00ce\u00d1\7\"\2\2\u00cf\u00d2"+
		"\7-\2\2\u00d0\u00d2\5\30\r\2\u00d1\u00cf\3\2\2\2\u00d1\u00d0\3\2\2\2\u00d2"+
		"\u00d3\3\2\2\2\u00d3\u00d4\7#\2\2\u00d4\u00d5\7)\2\2\u00d5\'\3\2\2\2\u00d6"+
		"\u00d7\t\5\2\2\u00d7)\3\2\2\2\u00d8\u00e3\7\60\2\2\u00d9\u00e3\7\61\2"+
		"\2\u00da\u00dc\7\25\2\2\u00db\u00da\3\2\2\2\u00db\u00dc\3\2\2\2\u00dc"+
		"\u00dd\3\2\2\2\u00dd\u00e3\7/\2\2\u00de\u00e0\7\25\2\2\u00df\u00de\3\2"+
		"\2\2\u00df\u00e0\3\2\2\2\u00e0\u00e1\3\2\2\2\u00e1\u00e3\7.\2\2\u00e2"+
		"\u00d8\3\2\2\2\u00e2\u00d9\3\2\2\2\u00e2\u00db\3\2\2\2\u00e2\u00df\3\2"+
		"\2\2\u00e3+\3\2\2\2\30/;HKV]orx\u0080\u0089\u008e\u009b\u00a0\u00a5\u00aa"+
		"\u00b4\u00bd\u00d1\u00db\u00df\u00e2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}