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
		PROGRAM=1, INT=2, CHAR=3, FLOAT=4, BOOL=5, VOID=6, FUNC=7, RETURN=8, VAR=9, 
		PRINT=10, IF=11, ELSE=12, WHILE=13, FOR=14, IN=15, DOTS=16, BY=17, PLUS=18, 
		MINUS=19, MULTIPLY=20, DIVISION=21, ASSIGN=22, EQUAL=23, NOT=24, NOT_EQUAL=25, 
		LESS_THAN=26, GREATER_THAN=27, AND=28, OR=29, OPEN_BRACKET=30, CLOSE_BRACKET=31, 
		OPEN_PAREN=32, CLOSE_PAREN=33, OPEN_CURLY=34, CLOSE_CURLY=35, COMMA=36, 
		COLON=37, DOT=38, SEMICOLON=39, ARROW=40, TRUE=41, FALSE=42, LETRERO=43, 
		CONST_I=44, CONST_F=45, CONST_B=46, CONST_C=47, ID=48, TEXT=49, WS=50;
	public static final int
		RULE_mapache = 0, RULE_program = 1, RULE_bloqueprogram = 2, RULE_bloque2 = 3, 
		RULE_bloque3 = 4, RULE_asignacion = 5, RULE_condicion = 6, RULE_variable = 7, 
		RULE_funcion = 8, RULE_bloque = 9, RULE_estatuto = 10, RULE_expresion = 11, 
		RULE_exp = 12, RULE_termino = 13, RULE_factor = 14, RULE_factor1 = 15, 
		RULE_factor2 = 16, RULE_factor3 = 17, RULE_factor31 = 18, RULE_factor32 = 19, 
		RULE_ciclo = 20, RULE_cicloWhile = 21, RULE_cicloFor = 22, RULE_imprimir = 23, 
		RULE_tipo = 24, RULE_cte = 25;
	public static final String[] ruleNames = {
		"mapache", "program", "bloqueprogram", "bloque2", "bloque3", "asignacion", 
		"condicion", "variable", "funcion", "bloque", "estatuto", "expresion", 
		"exp", "termino", "factor", "factor1", "factor2", "factor3", "factor31", 
		"factor32", "ciclo", "cicloWhile", "cicloFor", "imprimir", "tipo", "cte"
	};

	private static final String[] _LITERAL_NAMES = {
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, "PROGRAM", "INT", "CHAR", "FLOAT", "BOOL", "VOID", "FUNC", "RETURN", 
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
			setState(53); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(52);
				program();
				}
				}
				setState(55); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==PROGRAM );
			setState(57);
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
		public TerminalNode PROGRAM() { return getToken(MapacheParser.PROGRAM, 0); }
		public BloqueprogramContext bloqueprogram() {
			return getRuleContext(BloqueprogramContext.class,0);
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
			setState(59);
			match(PROGRAM);
			setState(60);
			bloqueprogram();
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

	public static class BloqueprogramContext extends ParserRuleContext {
		public TerminalNode OPEN_CURLY() { return getToken(MapacheParser.OPEN_CURLY, 0); }
		public Bloque2Context bloque2() {
			return getRuleContext(Bloque2Context.class,0);
		}
		public Bloque3Context bloque3() {
			return getRuleContext(Bloque3Context.class,0);
		}
		public TerminalNode CLOSE_CURLY() { return getToken(MapacheParser.CLOSE_CURLY, 0); }
		public BloqueprogramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_bloqueprogram; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterBloqueprogram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitBloqueprogram(this);
		}
	}

	public final BloqueprogramContext bloqueprogram() throws RecognitionException {
		BloqueprogramContext _localctx = new BloqueprogramContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_bloqueprogram);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(62);
			match(OPEN_CURLY);
			setState(63);
			bloque2();
			setState(64);
			bloque3();
			setState(65);
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

	public static class Bloque2Context extends ParserRuleContext {
		public VariableContext variable() {
			return getRuleContext(VariableContext.class,0);
		}
		public Bloque2Context bloque2() {
			return getRuleContext(Bloque2Context.class,0);
		}
		public Bloque2Context(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_bloque2; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterBloque2(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitBloque2(this);
		}
	}

	public final Bloque2Context bloque2() throws RecognitionException {
		Bloque2Context _localctx = new Bloque2Context(_ctx, getState());
		enterRule(_localctx, 6, RULE_bloque2);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(67);
			variable();
			setState(68);
			bloque2();
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

	public static class Bloque3Context extends ParserRuleContext {
		public EstatutoContext estatuto() {
			return getRuleContext(EstatutoContext.class,0);
		}
		public Bloque3Context bloque3() {
			return getRuleContext(Bloque3Context.class,0);
		}
		public Bloque3Context(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_bloque3; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterBloque3(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitBloque3(this);
		}
	}

	public final Bloque3Context bloque3() throws RecognitionException {
		Bloque3Context _localctx = new Bloque3Context(_ctx, getState());
		enterRule(_localctx, 8, RULE_bloque3);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(70);
			estatuto();
			setState(71);
			bloque3();
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
		public TerminalNode OPEN_BRACKET() { return getToken(MapacheParser.OPEN_BRACKET, 0); }
		public ExpContext exp() {
			return getRuleContext(ExpContext.class,0);
		}
		public TerminalNode CLOSE_BRACKET() { return getToken(MapacheParser.CLOSE_BRACKET, 0); }
		public TerminalNode ASSIGN() { return getToken(MapacheParser.ASSIGN, 0); }
		public ExpresionContext expresion() {
			return getRuleContext(ExpresionContext.class,0);
		}
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
		enterRule(_localctx, 10, RULE_asignacion);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(73);
			match(ID);
			setState(74);
			match(OPEN_BRACKET);
			setState(75);
			exp();
			setState(76);
			match(CLOSE_BRACKET);
			setState(77);
			match(ASSIGN);
			setState(78);
			expresion();
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
		enterRule(_localctx, 12, RULE_condicion);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(80);
			match(IF);
			setState(81);
			match(OPEN_PAREN);
			setState(82);
			expresion();
			setState(83);
			match(CLOSE_PAREN);
			setState(84);
			bloque();
			setState(87);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ELSE) {
				{
				setState(85);
				match(ELSE);
				setState(86);
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
		enterRule(_localctx, 14, RULE_variable);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(89);
			match(VAR);
			setState(90);
			match(ID);
			setState(94);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==OPEN_BRACKET) {
				{
				setState(91);
				match(OPEN_BRACKET);
				setState(92);
				match(CONST_I);
				setState(93);
				match(CLOSE_BRACKET);
				}
			}

			setState(96);
			match(COLON);
			setState(97);
			tipo();
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
		enterRule(_localctx, 16, RULE_funcion);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(99);
			match(FUNC);
			setState(100);
			match(ID);
			setState(101);
			match(OPEN_PAREN);
			setState(114);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ID) {
				{
				setState(102);
				match(ID);
				setState(103);
				match(COLON);
				setState(104);
				tipo();
				setState(111);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMMA) {
					{
					{
					setState(105);
					match(COMMA);
					setState(106);
					match(ID);
					setState(107);
					match(COLON);
					setState(108);
					tipo();
					}
					}
					setState(113);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(116);
			match(CLOSE_PAREN);
			setState(117);
			match(ARROW);
			setState(120);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case VOID:
				{
				setState(118);
				match(VOID);
				}
				break;
			case INT:
			case CHAR:
			case FLOAT:
			case BOOL:
				{
				setState(119);
				tipo();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(122);
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
		enterRule(_localctx, 18, RULE_bloque);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(124);
			match(OPEN_CURLY);
			setState(128);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << FUNC) | (1L << IF) | (1L << WHILE) | (1L << FOR) | (1L << OPEN_PAREN) | (1L << ID))) != 0)) {
				{
				{
				setState(125);
				estatuto();
				}
				}
				setState(130);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(131);
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
		enterRule(_localctx, 20, RULE_estatuto);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(138);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case ID:
				{
				setState(133);
				asignacion();
				}
				break;
			case IF:
				{
				setState(134);
				condicion();
				}
				break;
			case OPEN_PAREN:
				{
				setState(135);
				imprimir();
				}
				break;
			case WHILE:
			case FOR:
				{
				setState(136);
				ciclo();
				}
				break;
			case FUNC:
				{
				setState(137);
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
		enterRule(_localctx, 22, RULE_expresion);
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
		enterRule(_localctx, 24, RULE_exp);
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
		enterRule(_localctx, 26, RULE_termino);
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
		public Factor1Context factor1() {
			return getRuleContext(Factor1Context.class,0);
		}
		public Factor2Context factor2() {
			return getRuleContext(Factor2Context.class,0);
		}
		public Factor3Context factor3() {
			return getRuleContext(Factor3Context.class,0);
		}
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
		enterRule(_localctx, 28, RULE_factor);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(158);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case OPEN_PAREN:
				{
				setState(155);
				factor1();
				}
				break;
			case PLUS:
			case MINUS:
				{
				setState(156);
				factor2();
				}
				break;
			case ID:
				{
				setState(157);
				factor3();
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

	public static class Factor1Context extends ParserRuleContext {
		public TerminalNode OPEN_PAREN() { return getToken(MapacheParser.OPEN_PAREN, 0); }
		public ExpContext exp() {
			return getRuleContext(ExpContext.class,0);
		}
		public TerminalNode CLOSE_PAREN() { return getToken(MapacheParser.CLOSE_PAREN, 0); }
		public Factor1Context(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_factor1; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterFactor1(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitFactor1(this);
		}
	}

	public final Factor1Context factor1() throws RecognitionException {
		Factor1Context _localctx = new Factor1Context(_ctx, getState());
		enterRule(_localctx, 30, RULE_factor1);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(160);
			match(OPEN_PAREN);
			setState(161);
			exp();
			setState(162);
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

	public static class Factor2Context extends ParserRuleContext {
		public CteContext cte() {
			return getRuleContext(CteContext.class,0);
		}
		public TerminalNode PLUS() { return getToken(MapacheParser.PLUS, 0); }
		public TerminalNode MINUS() { return getToken(MapacheParser.MINUS, 0); }
		public Factor2Context(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_factor2; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterFactor2(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitFactor2(this);
		}
	}

	public final Factor2Context factor2() throws RecognitionException {
		Factor2Context _localctx = new Factor2Context(_ctx, getState());
		enterRule(_localctx, 32, RULE_factor2);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(164);
			_la = _input.LA(1);
			if ( !(_la==PLUS || _la==MINUS) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			setState(165);
			cte();
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

	public static class Factor3Context extends ParserRuleContext {
		public TerminalNode ID() { return getToken(MapacheParser.ID, 0); }
		public Factor31Context factor31() {
			return getRuleContext(Factor31Context.class,0);
		}
		public Factor32Context factor32() {
			return getRuleContext(Factor32Context.class,0);
		}
		public Factor3Context(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_factor3; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterFactor3(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitFactor3(this);
		}
	}

	public final Factor3Context factor3() throws RecognitionException {
		Factor3Context _localctx = new Factor3Context(_ctx, getState());
		enterRule(_localctx, 34, RULE_factor3);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(167);
			match(ID);
			setState(170);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,12,_ctx) ) {
			case 1:
				{
				setState(168);
				factor31();
				}
				break;
			case 2:
				{
				setState(169);
				factor32();
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

	public static class Factor31Context extends ParserRuleContext {
		public TerminalNode OPEN_BRACKET() { return getToken(MapacheParser.OPEN_BRACKET, 0); }
		public ExpContext exp() {
			return getRuleContext(ExpContext.class,0);
		}
		public TerminalNode CLOSE_BRACKET() { return getToken(MapacheParser.CLOSE_BRACKET, 0); }
		public Factor31Context(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_factor31; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterFactor31(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitFactor31(this);
		}
	}

	public final Factor31Context factor31() throws RecognitionException {
		Factor31Context _localctx = new Factor31Context(_ctx, getState());
		enterRule(_localctx, 36, RULE_factor31);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(172);
			match(OPEN_BRACKET);
			setState(173);
			exp();
			setState(174);
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

	public static class Factor32Context extends ParserRuleContext {
		public TerminalNode OPEN_PAREN() { return getToken(MapacheParser.OPEN_PAREN, 0); }
		public List<ExpContext> exp() {
			return getRuleContexts(ExpContext.class);
		}
		public ExpContext exp(int i) {
			return getRuleContext(ExpContext.class,i);
		}
		public TerminalNode CLOSE_PAREN() { return getToken(MapacheParser.CLOSE_PAREN, 0); }
		public List<TerminalNode> COMMA() { return getTokens(MapacheParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(MapacheParser.COMMA, i);
		}
		public Factor32Context(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_factor32; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).enterFactor32(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapacheListener ) ((MapacheListener)listener).exitFactor32(this);
		}
	}

	public final Factor32Context factor32() throws RecognitionException {
		Factor32Context _localctx = new Factor32Context(_ctx, getState());
		enterRule(_localctx, 38, RULE_factor32);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(176);
			match(OPEN_PAREN);
			setState(177);
			exp();
			setState(182);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(178);
				match(COMMA);
				setState(179);
				exp();
				}
				}
				setState(184);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(185);
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
		enterRule(_localctx, 40, RULE_ciclo);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(189);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case WHILE:
				{
				setState(187);
				cicloWhile();
				}
				break;
			case FOR:
				{
				setState(188);
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
		enterRule(_localctx, 42, RULE_cicloWhile);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(191);
			match(WHILE);
			setState(192);
			expresion();
			setState(193);
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
		enterRule(_localctx, 44, RULE_cicloFor);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(195);
			match(FOR);
			setState(196);
			match(ID);
			setState(197);
			match(IN);
			setState(198);
			exp();
			setState(199);
			match(DOTS);
			setState(200);
			exp();
			setState(201);
			match(BY);
			setState(202);
			exp();
			setState(203);
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
		enterRule(_localctx, 46, RULE_imprimir);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(205);
			match(OPEN_PAREN);
			setState(208);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case PLUS:
			case MINUS:
			case OPEN_PAREN:
			case ID:
				{
				setState(206);
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
			setState(210);
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
		enterRule(_localctx, 48, RULE_tipo);
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
		enterRule(_localctx, 50, RULE_cte);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(214);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << CONST_I) | (1L << CONST_F) | (1L << CONST_B) | (1L << CONST_C))) != 0)) ) {
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

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\64\u00db\4\2\t\2"+
		"\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\3\2\6\28\n\2\r\2\16\29\3\2\3\2\3\3\3\3\3\3\3\4\3"+
		"\4\3\4\3\4\3\4\3\5\3\5\3\5\3\6\3\6\3\6\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\b"+
		"\3\b\3\b\3\b\3\b\3\b\3\b\5\bZ\n\b\3\t\3\t\3\t\3\t\3\t\5\ta\n\t\3\t\3\t"+
		"\3\t\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\7\np\n\n\f\n\16\ns\13\n\5"+
		"\nu\n\n\3\n\3\n\3\n\3\n\5\n{\n\n\3\n\3\n\3\13\3\13\7\13\u0081\n\13\f\13"+
		"\16\13\u0084\13\13\3\13\3\13\3\f\3\f\3\f\3\f\3\f\5\f\u008d\n\f\3\r\3\r"+
		"\3\r\5\r\u0092\n\r\3\16\3\16\3\16\5\16\u0097\n\16\3\17\3\17\3\17\5\17"+
		"\u009c\n\17\3\20\3\20\3\20\5\20\u00a1\n\20\3\21\3\21\3\21\3\21\3\22\3"+
		"\22\3\22\3\23\3\23\3\23\5\23\u00ad\n\23\3\24\3\24\3\24\3\24\3\25\3\25"+
		"\3\25\3\25\7\25\u00b7\n\25\f\25\16\25\u00ba\13\25\3\25\3\25\3\26\3\26"+
		"\5\26\u00c0\n\26\3\27\3\27\3\27\3\27\3\30\3\30\3\30\3\30\3\30\3\30\3\30"+
		"\3\30\3\30\3\30\3\31\3\31\3\31\5\31\u00d3\n\31\3\31\3\31\3\32\3\32\3\33"+
		"\3\33\3\33\2\2\34\2\4\6\b\n\f\16\20\22\24\26\30\32\34\36 \"$&(*,.\60\62"+
		"\64\2\7\4\2\31\31\33\37\3\2\24\25\3\2\26\27\3\2\4\7\3\2.\61\2\u00d5\2"+
		"\67\3\2\2\2\4=\3\2\2\2\6@\3\2\2\2\bE\3\2\2\2\nH\3\2\2\2\fK\3\2\2\2\16"+
		"R\3\2\2\2\20[\3\2\2\2\22e\3\2\2\2\24~\3\2\2\2\26\u008c\3\2\2\2\30\u008e"+
		"\3\2\2\2\32\u0093\3\2\2\2\34\u0098\3\2\2\2\36\u00a0\3\2\2\2 \u00a2\3\2"+
		"\2\2\"\u00a6\3\2\2\2$\u00a9\3\2\2\2&\u00ae\3\2\2\2(\u00b2\3\2\2\2*\u00bf"+
		"\3\2\2\2,\u00c1\3\2\2\2.\u00c5\3\2\2\2\60\u00cf\3\2\2\2\62\u00d6\3\2\2"+
		"\2\64\u00d8\3\2\2\2\668\5\4\3\2\67\66\3\2\2\289\3\2\2\29\67\3\2\2\29:"+
		"\3\2\2\2:;\3\2\2\2;<\7\2\2\3<\3\3\2\2\2=>\7\3\2\2>?\5\6\4\2?\5\3\2\2\2"+
		"@A\7$\2\2AB\5\b\5\2BC\5\n\6\2CD\7%\2\2D\7\3\2\2\2EF\5\20\t\2FG\5\b\5\2"+
		"G\t\3\2\2\2HI\5\26\f\2IJ\5\n\6\2J\13\3\2\2\2KL\7\62\2\2LM\7 \2\2MN\5\32"+
		"\16\2NO\7!\2\2OP\7\30\2\2PQ\5\30\r\2Q\r\3\2\2\2RS\7\r\2\2ST\7\"\2\2TU"+
		"\5\30\r\2UV\7#\2\2VY\5\24\13\2WX\7\16\2\2XZ\5\24\13\2YW\3\2\2\2YZ\3\2"+
		"\2\2Z\17\3\2\2\2[\\\7\13\2\2\\`\7\62\2\2]^\7 \2\2^_\7.\2\2_a\7!\2\2`]"+
		"\3\2\2\2`a\3\2\2\2ab\3\2\2\2bc\7\'\2\2cd\5\62\32\2d\21\3\2\2\2ef\7\t\2"+
		"\2fg\7\62\2\2gt\7\"\2\2hi\7\62\2\2ij\7\'\2\2jq\5\62\32\2kl\7&\2\2lm\7"+
		"\62\2\2mn\7\'\2\2np\5\62\32\2ok\3\2\2\2ps\3\2\2\2qo\3\2\2\2qr\3\2\2\2"+
		"ru\3\2\2\2sq\3\2\2\2th\3\2\2\2tu\3\2\2\2uv\3\2\2\2vw\7#\2\2wz\7*\2\2x"+
		"{\7\b\2\2y{\5\62\32\2zx\3\2\2\2zy\3\2\2\2{|\3\2\2\2|}\5\24\13\2}\23\3"+
		"\2\2\2~\u0082\7$\2\2\177\u0081\5\26\f\2\u0080\177\3\2\2\2\u0081\u0084"+
		"\3\2\2\2\u0082\u0080\3\2\2\2\u0082\u0083\3\2\2\2\u0083\u0085\3\2\2\2\u0084"+
		"\u0082\3\2\2\2\u0085\u0086\7%\2\2\u0086\25\3\2\2\2\u0087\u008d\5\f\7\2"+
		"\u0088\u008d\5\16\b\2\u0089\u008d\5\60\31\2\u008a\u008d\5*\26\2\u008b"+
		"\u008d\5\22\n\2\u008c\u0087\3\2\2\2\u008c\u0088\3\2\2\2\u008c\u0089\3"+
		"\2\2\2\u008c\u008a\3\2\2\2\u008c\u008b\3\2\2\2\u008d\27\3\2\2\2\u008e"+
		"\u0091\5\32\16\2\u008f\u0090\t\2\2\2\u0090\u0092\5\32\16\2\u0091\u008f"+
		"\3\2\2\2\u0091\u0092\3\2\2\2\u0092\31\3\2\2\2\u0093\u0096\5\34\17\2\u0094"+
		"\u0095\t\3\2\2\u0095\u0097\5\34\17\2\u0096\u0094\3\2\2\2\u0096\u0097\3"+
		"\2\2\2\u0097\33\3\2\2\2\u0098\u009b\5\36\20\2\u0099\u009a\t\4\2\2\u009a"+
		"\u009c\5\36\20\2\u009b\u0099\3\2\2\2\u009b\u009c\3\2\2\2\u009c\35\3\2"+
		"\2\2\u009d\u00a1\5 \21\2\u009e\u00a1\5\"\22\2\u009f\u00a1\5$\23\2\u00a0"+
		"\u009d\3\2\2\2\u00a0\u009e\3\2\2\2\u00a0\u009f\3\2\2\2\u00a1\37\3\2\2"+
		"\2\u00a2\u00a3\7\"\2\2\u00a3\u00a4\5\32\16\2\u00a4\u00a5\7#\2\2\u00a5"+
		"!\3\2\2\2\u00a6\u00a7\t\3\2\2\u00a7\u00a8\5\64\33\2\u00a8#\3\2\2\2\u00a9"+
		"\u00ac\7\62\2\2\u00aa\u00ad\5&\24\2\u00ab\u00ad\5(\25\2\u00ac\u00aa\3"+
		"\2\2\2\u00ac\u00ab\3\2\2\2\u00ac\u00ad\3\2\2\2\u00ad%\3\2\2\2\u00ae\u00af"+
		"\7 \2\2\u00af\u00b0\5\32\16\2\u00b0\u00b1\7!\2\2\u00b1\'\3\2\2\2\u00b2"+
		"\u00b3\7\"\2\2\u00b3\u00b8\5\32\16\2\u00b4\u00b5\7&\2\2\u00b5\u00b7\5"+
		"\32\16\2\u00b6\u00b4\3\2\2\2\u00b7\u00ba\3\2\2\2\u00b8\u00b6\3\2\2\2\u00b8"+
		"\u00b9\3\2\2\2\u00b9\u00bb\3\2\2\2\u00ba\u00b8\3\2\2\2\u00bb\u00bc\7#"+
		"\2\2\u00bc)\3\2\2\2\u00bd\u00c0\5,\27\2\u00be\u00c0\5.\30\2\u00bf\u00bd"+
		"\3\2\2\2\u00bf\u00be\3\2\2\2\u00c0+\3\2\2\2\u00c1\u00c2\7\17\2\2\u00c2"+
		"\u00c3\5\30\r\2\u00c3\u00c4\5\24\13\2\u00c4-\3\2\2\2\u00c5\u00c6\7\20"+
		"\2\2\u00c6\u00c7\7\62\2\2\u00c7\u00c8\7\21\2\2\u00c8\u00c9\5\32\16\2\u00c9"+
		"\u00ca\7\22\2\2\u00ca\u00cb\5\32\16\2\u00cb\u00cc\7\23\2\2\u00cc\u00cd"+
		"\5\32\16\2\u00cd\u00ce\5\24\13\2\u00ce/\3\2\2\2\u00cf\u00d2\7\"\2\2\u00d0"+
		"\u00d3\5\32\16\2\u00d1\u00d3\3\2\2\2\u00d2\u00d0\3\2\2\2\u00d2\u00d1\3"+
		"\2\2\2\u00d3\u00d4\3\2\2\2\u00d4\u00d5\7#\2\2\u00d5\61\3\2\2\2\u00d6\u00d7"+
		"\t\5\2\2\u00d7\63\3\2\2\2\u00d8\u00d9\t\6\2\2\u00d9\65\3\2\2\2\229Y`q"+
		"tz\u0082\u008c\u0091\u0096\u009b\u00a0\u00ac\u00b8\u00bf\u00d2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}