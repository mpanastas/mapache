// Generated from Mapache.g4 by ANTLR 4.7.1
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
		RULE_estatuto = 8, RULE_expresion = 9, RULE_exp = 10, RULE_termino = 11, 
		RULE_factor = 12, RULE_vector = 13, RULE_ciclo = 14, RULE_cicloWhile = 15, 
		RULE_cicloFor = 16, RULE_imprimir = 17, RULE_tipo = 18, RULE_cte = 19;
	public static final String[] ruleNames = {
		"mapache", "program", "asignacion", "llamada", "condicion", "variable", 
		"funcion", "bloque", "estatuto", "expresion", "exp", "termino", "factor", 
		"vector", "ciclo", "cicloWhile", "cicloFor", "imprimir", "tipo", "cte"
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterMapache(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitMapache(this);
		}
	}

	public final MapacheContext mapache() throws RecognitionException {
		MapacheContext _localctx = new MapacheContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_mapache);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(41); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(40);
				program();
				}
				}
				setState(43); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==MAPACHE );
			setState(45);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterProgram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitProgram(this);
		}
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_program);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(47);
			match(MAPACHE);
			setState(48);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterAsignacion(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitAsignacion(this);
		}
	}

	public final AsignacionContext asignacion() throws RecognitionException {
		AsignacionContext _localctx = new AsignacionContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_asignacion);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(50);
			match(ID);
			setState(55);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==OPEN_BRACKET) {
				{
				setState(51);
				match(OPEN_BRACKET);
				setState(52);
				exp();
				setState(53);
				match(CLOSE_BRACKET);
				}
			}

			setState(57);
			match(ASSIGN);
			setState(58);
			expresion();
			setState(59);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterLlamada(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitLlamada(this);
		}
	}

	public final LlamadaContext llamada() throws RecognitionException {
		LlamadaContext _localctx = new LlamadaContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_llamada);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(61);
			match(ID);
			setState(62);
			match(OPEN_PAREN);
			setState(71);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << MINUS) | (1L << OPEN_PAREN) | (1L << CONST_I) | (1L << CONST_F) | (1L << CONST_B) | (1L << CONST_C) | (1L << ID))) != 0)) {
				{
				setState(63);
				expresion();
				setState(68);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMMA) {
					{
					{
					setState(64);
					match(COMMA);
					setState(65);
					expresion();
					}
					}
					setState(70);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(73);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterCondicion(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitCondicion(this);
		}
	}

	public final CondicionContext condicion() throws RecognitionException {
		CondicionContext _localctx = new CondicionContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_condicion);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(75);
			match(IF);
			setState(76);
			match(OPEN_PAREN);
			setState(77);
			expresion();
			setState(78);
			match(CLOSE_PAREN);
			setState(79);
			bloque();
			setState(82);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ELSE) {
				{
				setState(80);
				match(ELSE);
				setState(81);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterVariable(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitVariable(this);
		}
	}

	public final VariableContext variable() throws RecognitionException {
		VariableContext _localctx = new VariableContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_variable);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(84);
			match(VAR);
			setState(85);
			match(ID);
			setState(89);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==OPEN_BRACKET) {
				{
				setState(86);
				match(OPEN_BRACKET);
				setState(87);
				match(CONST_I);
				setState(88);
				match(CLOSE_BRACKET);
				}
			}

			setState(91);
			match(COLON);
			setState(92);
			tipo();
			setState(93);
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
		public BloqueContext bloque() {
			return getRuleContext(BloqueContext.class,0);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterFuncion(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitFuncion(this);
		}
	}

	public final FuncionContext funcion() throws RecognitionException {
		FuncionContext _localctx = new FuncionContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_funcion);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(95);
			match(FUNC);
			setState(96);
			match(ID);
			setState(97);
			match(OPEN_PAREN);
			setState(110);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ID) {
				{
				setState(98);
				match(ID);
				setState(99);
				match(COLON);
				setState(100);
				tipo();
				setState(107);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMMA) {
					{
					{
					setState(101);
					match(COMMA);
					setState(102);
					match(ID);
					setState(103);
					match(COLON);
					setState(104);
					tipo();
					}
					}
					setState(109);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(112);
			match(CLOSE_PAREN);
			setState(113);
			match(ARROW);
			setState(116);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case VOID:
				{
				setState(114);
				match(VOID);
				}
				break;
			case INT:
			case CHAR:
			case FLOAT:
			case BOOL:
				{
				setState(115);
				tipo();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(118);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterBloque(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitBloque(this);
		}
	}

	public final BloqueContext bloque() throws RecognitionException {
		BloqueContext _localctx = new BloqueContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_bloque);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(120);
			match(OPEN_CURLY);
			setState(124);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << FUNC) | (1L << VAR) | (1L << PRINT) | (1L << IF) | (1L << WHILE) | (1L << FOR) | (1L << ID))) != 0)) {
				{
				{
				setState(121);
				estatuto();
				}
				}
				setState(126);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(127);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterEstatuto(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitEstatuto(this);
		}
	}

	public final EstatutoContext estatuto() throws RecognitionException {
		EstatutoContext _localctx = new EstatutoContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_estatuto);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(138);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,10,_ctx) ) {
			case 1:
				{
				setState(129);
				variable();
				}
				break;
			case 2:
				{
				setState(130);
				asignacion();
				}
				break;
			case 3:
				{
				setState(131);
				condicion();
				}
				break;
			case 4:
				{
				setState(132);
				imprimir();
				}
				break;
			case 5:
				{
				setState(133);
				ciclo();
				}
				break;
			case 6:
				{
				setState(134);
				funcion();
				}
				break;
			case 7:
				{
				{
				setState(135);
				llamada();
				setState(136);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterExpresion(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitExpresion(this);
		}
	}

	public final ExpresionContext expresion() throws RecognitionException {
		ExpresionContext _localctx = new ExpresionContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_expresion);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(140);
			exp();
			setState(143);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << EQUAL) | (1L << NOT_EQUAL) | (1L << LESS_THAN) | (1L << GREATER_THAN) | (1L << AND) | (1L << OR))) != 0)) {
				{
				setState(141);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << EQUAL) | (1L << NOT_EQUAL) | (1L << LESS_THAN) | (1L << GREATER_THAN) | (1L << AND) | (1L << OR))) != 0)) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(142);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterExp(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitExp(this);
		}
	}

	public final ExpContext exp() throws RecognitionException {
		ExpContext _localctx = new ExpContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_exp);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(145);
			termino();
			setState(148);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==PLUS || _la==MINUS) {
				{
				setState(146);
				_la = _input.LA(1);
				if ( !(_la==PLUS || _la==MINUS) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(147);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterTermino(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitTermino(this);
		}
	}

	public final TerminoContext termino() throws RecognitionException {
		TerminoContext _localctx = new TerminoContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_termino);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(150);
			factor();
			setState(153);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==MULTIPLY || _la==DIVISION) {
				{
				setState(151);
				_la = _input.LA(1);
				if ( !(_la==MULTIPLY || _la==DIVISION) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(152);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterFactor(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitFactor(this);
		}
	}

	public final FactorContext factor() throws RecognitionException {
		FactorContext _localctx = new FactorContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_factor);
		try {
			setState(163);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,14,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				{
				setState(155);
				match(OPEN_PAREN);
				setState(156);
				exp();
				setState(157);
				match(CLOSE_PAREN);
				}
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(159);
				vector();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(160);
				cte();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(161);
				llamada();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(162);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterVector(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitVector(this);
		}
	}

	public final VectorContext vector() throws RecognitionException {
		VectorContext _localctx = new VectorContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_vector);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(165);
			match(ID);
			setState(166);
			match(OPEN_BRACKET);
			setState(167);
			exp();
			setState(168);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterCiclo(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitCiclo(this);
		}
	}

	public final CicloContext ciclo() throws RecognitionException {
		CicloContext _localctx = new CicloContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_ciclo);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(172);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case WHILE:
				{
				setState(170);
				cicloWhile();
				}
				break;
			case FOR:
				{
				setState(171);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterCicloWhile(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitCicloWhile(this);
		}
	}

	public final CicloWhileContext cicloWhile() throws RecognitionException {
		CicloWhileContext _localctx = new CicloWhileContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_cicloWhile);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(174);
			match(WHILE);
			setState(175);
			expresion();
			setState(176);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterCicloFor(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitCicloFor(this);
		}
	}

	public final CicloForContext cicloFor() throws RecognitionException {
		CicloForContext _localctx = new CicloForContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_cicloFor);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(178);
			match(FOR);
			setState(179);
			match(ID);
			setState(180);
			match(IN);
			setState(181);
			exp();
			setState(182);
			match(DOTS);
			setState(183);
			exp();
			setState(184);
			match(BY);
			setState(185);
			exp();
			setState(186);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterImprimir(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitImprimir(this);
		}
	}

	public final ImprimirContext imprimir() throws RecognitionException {
		ImprimirContext _localctx = new ImprimirContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_imprimir);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(188);
			match(PRINT);
			setState(189);
			match(OPEN_PAREN);
			setState(192);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case TEXT:
				{
				setState(190);
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
				setState(191);
				exp();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(194);
			match(CLOSE_PAREN);
			setState(195);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterTipo(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitTipo(this);
		}
	}

	public final TipoContext tipo() throws RecognitionException {
		TipoContext _localctx = new TipoContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_tipo);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(197);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterCte(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitCte(this);
		}
	}

	public final CteContext cte() throws RecognitionException {
		CteContext _localctx = new CteContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_cte);
		int _la;
		try {
			setState(209);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,19,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(199);
				match(CONST_B);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(200);
				match(CONST_C);
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				{
				setState(202);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==MINUS) {
					{
					setState(201);
					match(MINUS);
					}
				}

				setState(204);
				match(CONST_F);
				}
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				{
				setState(206);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==MINUS) {
					{
					setState(205);
					match(MINUS);
					}
				}

				setState(208);
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
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\63\u00d6\4\2\t\2"+
		"\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\3\2\6\2,\n\2\r\2\16\2-\3\2\3\2\3\3\3\3"+
		"\3\3\3\4\3\4\3\4\3\4\3\4\5\4:\n\4\3\4\3\4\3\4\3\4\3\5\3\5\3\5\3\5\3\5"+
		"\7\5E\n\5\f\5\16\5H\13\5\5\5J\n\5\3\5\3\5\3\6\3\6\3\6\3\6\3\6\3\6\3\6"+
		"\5\6U\n\6\3\7\3\7\3\7\3\7\3\7\5\7\\\n\7\3\7\3\7\3\7\3\7\3\b\3\b\3\b\3"+
		"\b\3\b\3\b\3\b\3\b\3\b\3\b\7\bl\n\b\f\b\16\bo\13\b\5\bq\n\b\3\b\3\b\3"+
		"\b\3\b\5\bw\n\b\3\b\3\b\3\t\3\t\7\t}\n\t\f\t\16\t\u0080\13\t\3\t\3\t\3"+
		"\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\5\n\u008d\n\n\3\13\3\13\3\13\5\13\u0092"+
		"\n\13\3\f\3\f\3\f\5\f\u0097\n\f\3\r\3\r\3\r\5\r\u009c\n\r\3\16\3\16\3"+
		"\16\3\16\3\16\3\16\3\16\3\16\5\16\u00a6\n\16\3\17\3\17\3\17\3\17\3\17"+
		"\3\20\3\20\5\20\u00af\n\20\3\21\3\21\3\21\3\21\3\22\3\22\3\22\3\22\3\22"+
		"\3\22\3\22\3\22\3\22\3\22\3\23\3\23\3\23\3\23\5\23\u00c3\n\23\3\23\3\23"+
		"\3\23\3\24\3\24\3\25\3\25\3\25\5\25\u00cd\n\25\3\25\3\25\5\25\u00d1\n"+
		"\25\3\25\5\25\u00d4\n\25\3\25\2\2\26\2\4\6\b\n\f\16\20\22\24\26\30\32"+
		"\34\36 \"$&(\2\6\4\2\31\31\33\37\3\2\24\25\3\2\26\27\3\2\4\7\2\u00df\2"+
		"+\3\2\2\2\4\61\3\2\2\2\6\64\3\2\2\2\b?\3\2\2\2\nM\3\2\2\2\fV\3\2\2\2\16"+
		"a\3\2\2\2\20z\3\2\2\2\22\u008c\3\2\2\2\24\u008e\3\2\2\2\26\u0093\3\2\2"+
		"\2\30\u0098\3\2\2\2\32\u00a5\3\2\2\2\34\u00a7\3\2\2\2\36\u00ae\3\2\2\2"+
		" \u00b0\3\2\2\2\"\u00b4\3\2\2\2$\u00be\3\2\2\2&\u00c7\3\2\2\2(\u00d3\3"+
		"\2\2\2*,\5\4\3\2+*\3\2\2\2,-\3\2\2\2-+\3\2\2\2-.\3\2\2\2./\3\2\2\2/\60"+
		"\7\2\2\3\60\3\3\2\2\2\61\62\7\3\2\2\62\63\5\20\t\2\63\5\3\2\2\2\649\7"+
		"\62\2\2\65\66\7 \2\2\66\67\5\26\f\2\678\7!\2\28:\3\2\2\29\65\3\2\2\29"+
		":\3\2\2\2:;\3\2\2\2;<\7\30\2\2<=\5\24\13\2=>\7)\2\2>\7\3\2\2\2?@\7\62"+
		"\2\2@I\7\"\2\2AF\5\24\13\2BC\7&\2\2CE\5\24\13\2DB\3\2\2\2EH\3\2\2\2FD"+
		"\3\2\2\2FG\3\2\2\2GJ\3\2\2\2HF\3\2\2\2IA\3\2\2\2IJ\3\2\2\2JK\3\2\2\2K"+
		"L\7#\2\2L\t\3\2\2\2MN\7\r\2\2NO\7\"\2\2OP\5\24\13\2PQ\7#\2\2QT\5\20\t"+
		"\2RS\7\16\2\2SU\5\20\t\2TR\3\2\2\2TU\3\2\2\2U\13\3\2\2\2VW\7\13\2\2W["+
		"\7\62\2\2XY\7 \2\2YZ\7.\2\2Z\\\7!\2\2[X\3\2\2\2[\\\3\2\2\2\\]\3\2\2\2"+
		"]^\7\'\2\2^_\5&\24\2_`\7)\2\2`\r\3\2\2\2ab\7\t\2\2bc\7\62\2\2cp\7\"\2"+
		"\2de\7\62\2\2ef\7\'\2\2fm\5&\24\2gh\7&\2\2hi\7\62\2\2ij\7\'\2\2jl\5&\24"+
		"\2kg\3\2\2\2lo\3\2\2\2mk\3\2\2\2mn\3\2\2\2nq\3\2\2\2om\3\2\2\2pd\3\2\2"+
		"\2pq\3\2\2\2qr\3\2\2\2rs\7#\2\2sv\7*\2\2tw\7\b\2\2uw\5&\24\2vt\3\2\2\2"+
		"vu\3\2\2\2wx\3\2\2\2xy\5\20\t\2y\17\3\2\2\2z~\7$\2\2{}\5\22\n\2|{\3\2"+
		"\2\2}\u0080\3\2\2\2~|\3\2\2\2~\177\3\2\2\2\177\u0081\3\2\2\2\u0080~\3"+
		"\2\2\2\u0081\u0082\7%\2\2\u0082\21\3\2\2\2\u0083\u008d\5\f\7\2\u0084\u008d"+
		"\5\6\4\2\u0085\u008d\5\n\6\2\u0086\u008d\5$\23\2\u0087\u008d\5\36\20\2"+
		"\u0088\u008d\5\16\b\2\u0089\u008a\5\b\5\2\u008a\u008b\7)\2\2\u008b\u008d"+
		"\3\2\2\2\u008c\u0083\3\2\2\2\u008c\u0084\3\2\2\2\u008c\u0085\3\2\2\2\u008c"+
		"\u0086\3\2\2\2\u008c\u0087\3\2\2\2\u008c\u0088\3\2\2\2\u008c\u0089\3\2"+
		"\2\2\u008d\23\3\2\2\2\u008e\u0091\5\26\f\2\u008f\u0090\t\2\2\2\u0090\u0092"+
		"\5\26\f\2\u0091\u008f\3\2\2\2\u0091\u0092\3\2\2\2\u0092\25\3\2\2\2\u0093"+
		"\u0096\5\30\r\2\u0094\u0095\t\3\2\2\u0095\u0097\5\30\r\2\u0096\u0094\3"+
		"\2\2\2\u0096\u0097\3\2\2\2\u0097\27\3\2\2\2\u0098\u009b\5\32\16\2\u0099"+
		"\u009a\t\4\2\2\u009a\u009c\5\32\16\2\u009b\u0099\3\2\2\2\u009b\u009c\3"+
		"\2\2\2\u009c\31\3\2\2\2\u009d\u009e\7\"\2\2\u009e\u009f\5\26\f\2\u009f"+
		"\u00a0\7#\2\2\u00a0\u00a6\3\2\2\2\u00a1\u00a6\5\34\17\2\u00a2\u00a6\5"+
		"(\25\2\u00a3\u00a6\5\b\5\2\u00a4\u00a6\7\62\2\2\u00a5\u009d\3\2\2\2\u00a5"+
		"\u00a1\3\2\2\2\u00a5\u00a2\3\2\2\2\u00a5\u00a3\3\2\2\2\u00a5\u00a4\3\2"+
		"\2\2\u00a6\33\3\2\2\2\u00a7\u00a8\7\62\2\2\u00a8\u00a9\7 \2\2\u00a9\u00aa"+
		"\5\26\f\2\u00aa\u00ab\7!\2\2\u00ab\35\3\2\2\2\u00ac\u00af\5 \21\2\u00ad"+
		"\u00af\5\"\22\2\u00ae\u00ac\3\2\2\2\u00ae\u00ad\3\2\2\2\u00af\37\3\2\2"+
		"\2\u00b0\u00b1\7\17\2\2\u00b1\u00b2\5\24\13\2\u00b2\u00b3\5\20\t\2\u00b3"+
		"!\3\2\2\2\u00b4\u00b5\7\20\2\2\u00b5\u00b6\7\62\2\2\u00b6\u00b7\7\21\2"+
		"\2\u00b7\u00b8\5\26\f\2\u00b8\u00b9\7\22\2\2\u00b9\u00ba\5\26\f\2\u00ba"+
		"\u00bb\7\23\2\2\u00bb\u00bc\5\26\f\2\u00bc\u00bd\5\20\t\2\u00bd#\3\2\2"+
		"\2\u00be\u00bf\7\f\2\2\u00bf\u00c2\7\"\2\2\u00c0\u00c3\7-\2\2\u00c1\u00c3"+
		"\5\26\f\2\u00c2\u00c0\3\2\2\2\u00c2\u00c1\3\2\2\2\u00c3\u00c4\3\2\2\2"+
		"\u00c4\u00c5\7#\2\2\u00c5\u00c6\7)\2\2\u00c6%\3\2\2\2\u00c7\u00c8\t\5"+
		"\2\2\u00c8\'\3\2\2\2\u00c9\u00d4\7\60\2\2\u00ca\u00d4\7\61\2\2\u00cb\u00cd"+
		"\7\25\2\2\u00cc\u00cb\3\2\2\2\u00cc\u00cd\3\2\2\2\u00cd\u00ce\3\2\2\2"+
		"\u00ce\u00d4\7/\2\2\u00cf\u00d1\7\25\2\2\u00d0\u00cf\3\2\2\2\u00d0\u00d1"+
		"\3\2\2\2\u00d1\u00d2\3\2\2\2\u00d2\u00d4\7.\2\2\u00d3\u00c9\3\2\2\2\u00d3"+
		"\u00ca\3\2\2\2\u00d3\u00cc\3\2\2\2\u00d3\u00d0\3\2\2\2\u00d4)\3\2\2\2"+
		"\26-9FIT[mpv~\u008c\u0091\u0096\u009b\u00a5\u00ae\u00c2\u00cc\u00d0\u00d3";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}