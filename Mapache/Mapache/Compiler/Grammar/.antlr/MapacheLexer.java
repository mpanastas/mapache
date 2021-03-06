// Generated from /Users/luisfelipesv/Documents/GitHub/mapache/Mapache/Mapache/Compiler/Grammar/Mapache.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MapacheLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.7.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, MAPACHE=3, INT=4, CHAR=5, FLOAT=6, BOOL=7, VOID=8, FUNC=9, 
		RETURN=10, VAR=11, PRINT=12, IF=13, ELSE=14, WHILE=15, FOR=16, IN=17, 
		DOTS=18, BY=19, PLUS=20, MINUS=21, MULTIPLY=22, DIVISION=23, ASSIGN=24, 
		EQUAL=25, NOT=26, NOT_EQUAL=27, LESS_THAN=28, GREATER_THAN=29, AND=30, 
		OR=31, OPEN_BRACKET=32, CLOSE_BRACKET=33, OPEN_PAREN=34, CLOSE_PAREN=35, 
		OPEN_CURLY=36, CLOSE_CURLY=37, COMMA=38, COLON=39, DOT=40, SEMICOLON=41, 
		ARROW=42, TRUE=43, FALSE=44, TEXT=45, CONST_I=46, CONST_F=47, CONST_C=48, 
		ID=49, WS=50;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	public static final String[] ruleNames = {
		"T__0", "T__1", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", 
		"L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", 
		"Z", "QUOTE", "APOS", "DIGIT", "LOWERCASE", "UPPERCASE", "MAPACHE", "INT", 
		"CHAR", "FLOAT", "BOOL", "VOID", "FUNC", "RETURN", "VAR", "PRINT", "IF", 
		"ELSE", "WHILE", "FOR", "IN", "DOTS", "BY", "PLUS", "MINUS", "MULTIPLY", 
		"DIVISION", "ASSIGN", "EQUAL", "NOT", "NOT_EQUAL", "LESS_THAN", "GREATER_THAN", 
		"AND", "OR", "OPEN_BRACKET", "CLOSE_BRACKET", "OPEN_PAREN", "CLOSE_PAREN", 
		"OPEN_CURLY", "CLOSE_CURLY", "COMMA", "COLON", "DOT", "SEMICOLON", "ARROW", 
		"TRUE", "FALSE", "TEXT", "CONST_I", "CONST_F", "CONST_C", "ID", "WS"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "'true'", "'false'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, null, null, "MAPACHE", "INT", "CHAR", "FLOAT", "BOOL", "VOID", "FUNC", 
		"RETURN", "VAR", "PRINT", "IF", "ELSE", "WHILE", "FOR", "IN", "DOTS", 
		"BY", "PLUS", "MINUS", "MULTIPLY", "DIVISION", "ASSIGN", "EQUAL", "NOT", 
		"NOT_EQUAL", "LESS_THAN", "GREATER_THAN", "AND", "OR", "OPEN_BRACKET", 
		"CLOSE_BRACKET", "OPEN_PAREN", "CLOSE_PAREN", "OPEN_CURLY", "CLOSE_CURLY", 
		"COMMA", "COLON", "DOT", "SEMICOLON", "ARROW", "TRUE", "FALSE", "TEXT", 
		"CONST_I", "CONST_F", "CONST_C", "ID", "WS"
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


	public MapacheLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "Mapache.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\64\u01aa\b\1\4\2"+
		"\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4"+
		"\13\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22"+
		"\t\22\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31"+
		"\t\31\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t"+
		" \4!\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t"+
		"+\4,\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64"+
		"\t\64\4\65\t\65\4\66\t\66\4\67\t\67\48\t8\49\t9\4:\t:\4;\t;\4<\t<\4=\t"+
		"=\4>\t>\4?\t?\4@\t@\4A\tA\4B\tB\4C\tC\4D\tD\4E\tE\4F\tF\4G\tG\4H\tH\4"+
		"I\tI\4J\tJ\4K\tK\4L\tL\4M\tM\4N\tN\4O\tO\4P\tP\4Q\tQ\4R\tR\3\2\3\2\3\2"+
		"\3\2\3\2\3\3\3\3\3\3\3\3\3\3\3\3\3\4\3\4\3\5\3\5\3\6\3\6\3\7\3\7\3\b\3"+
		"\b\3\t\3\t\3\n\3\n\3\13\3\13\3\f\3\f\3\r\3\r\3\16\3\16\3\17\3\17\3\20"+
		"\3\20\3\21\3\21\3\22\3\22\3\23\3\23\3\24\3\24\3\25\3\25\3\26\3\26\3\27"+
		"\3\27\3\30\3\30\3\31\3\31\3\32\3\32\3\33\3\33\3\34\3\34\3\35\3\35\3\36"+
		"\3\36\3\37\3\37\3 \3 \3!\3!\3\"\3\"\3#\3#\3#\3#\3#\3#\3#\3#\3$\3$\3$\3"+
		"$\3%\3%\3%\3%\3%\3&\3&\3&\3&\3&\3&\3\'\3\'\3\'\3\'\3\'\3(\3(\3(\3(\3("+
		"\3)\3)\3)\3)\3)\3*\3*\3*\3*\3*\3*\3*\3+\3+\3+\3+\3,\3,\3,\3,\3,\3,\3-"+
		"\3-\3-\3.\3.\3.\3.\3.\3/\3/\3/\3/\3/\3/\3\60\3\60\3\60\3\60\3\61\3\61"+
		"\3\61\3\62\3\62\3\62\3\62\3\63\3\63\3\63\3\64\3\64\3\65\3\65\3\66\3\66"+
		"\3\67\3\67\38\38\39\39\39\3:\3:\3;\3;\3;\3<\3<\3=\3=\3>\3>\3>\3?\3?\3"+
		"?\3@\3@\3A\3A\3B\3B\3C\3C\3D\3D\3E\3E\3F\3F\3G\3G\3H\3H\3I\3I\3J\3J\3"+
		"J\3K\3K\3K\3K\3K\3L\3L\3L\3L\3L\3L\3M\3M\7M\u0182\nM\fM\16M\u0185\13M"+
		"\3M\3M\3N\6N\u018a\nN\rN\16N\u018b\3O\6O\u018f\nO\rO\16O\u0190\3O\3O\6"+
		"O\u0195\nO\rO\16O\u0196\3P\3P\3P\3P\3Q\3Q\7Q\u019f\nQ\fQ\16Q\u01a2\13"+
		"Q\3R\6R\u01a5\nR\rR\16R\u01a6\3R\3R\3\u0183\2S\3\3\5\4\7\2\t\2\13\2\r"+
		"\2\17\2\21\2\23\2\25\2\27\2\31\2\33\2\35\2\37\2!\2#\2%\2\'\2)\2+\2-\2"+
		"/\2\61\2\63\2\65\2\67\29\2;\2=\2?\2A\2C\2E\5G\6I\7K\bM\tO\nQ\13S\fU\r"+
		"W\16Y\17[\20]\21_\22a\23c\24e\25g\26i\27k\30m\31o\32q\33s\34u\35w\36y"+
		"\37{ }!\177\"\u0081#\u0083$\u0085%\u0087&\u0089\'\u008b(\u008d)\u008f"+
		"*\u0091+\u0093,\u0095-\u0097.\u0099/\u009b\60\u009d\61\u009f\62\u00a1"+
		"\63\u00a3\64\3\2!\4\2CCcc\4\2DDdd\4\2EEee\4\2FFff\4\2GGgg\4\2HHhh\4\2"+
		"IIii\4\2JJjj\4\2KKkk\4\2LLll\4\2MMmm\4\2NNnn\4\2OOoo\4\2PPpp\4\2QQqq\4"+
		"\2RRrr\4\2SSss\4\2TTtt\4\2UUuu\4\2VVvv\4\2WWww\4\2XXxx\4\2YYyy\4\2ZZz"+
		"z\4\2[[{{\4\2\\\\||\3\2c|\3\2C\\\6\2\62;C\\aac|\4\2C\\c|\5\2\13\f\17\17"+
		"\"\"\2\u0190\2\3\3\2\2\2\2\5\3\2\2\2\2E\3\2\2\2\2G\3\2\2\2\2I\3\2\2\2"+
		"\2K\3\2\2\2\2M\3\2\2\2\2O\3\2\2\2\2Q\3\2\2\2\2S\3\2\2\2\2U\3\2\2\2\2W"+
		"\3\2\2\2\2Y\3\2\2\2\2[\3\2\2\2\2]\3\2\2\2\2_\3\2\2\2\2a\3\2\2\2\2c\3\2"+
		"\2\2\2e\3\2\2\2\2g\3\2\2\2\2i\3\2\2\2\2k\3\2\2\2\2m\3\2\2\2\2o\3\2\2\2"+
		"\2q\3\2\2\2\2s\3\2\2\2\2u\3\2\2\2\2w\3\2\2\2\2y\3\2\2\2\2{\3\2\2\2\2}"+
		"\3\2\2\2\2\177\3\2\2\2\2\u0081\3\2\2\2\2\u0083\3\2\2\2\2\u0085\3\2\2\2"+
		"\2\u0087\3\2\2\2\2\u0089\3\2\2\2\2\u008b\3\2\2\2\2\u008d\3\2\2\2\2\u008f"+
		"\3\2\2\2\2\u0091\3\2\2\2\2\u0093\3\2\2\2\2\u0095\3\2\2\2\2\u0097\3\2\2"+
		"\2\2\u0099\3\2\2\2\2\u009b\3\2\2\2\2\u009d\3\2\2\2\2\u009f\3\2\2\2\2\u00a1"+
		"\3\2\2\2\2\u00a3\3\2\2\2\3\u00a5\3\2\2\2\5\u00aa\3\2\2\2\7\u00b0\3\2\2"+
		"\2\t\u00b2\3\2\2\2\13\u00b4\3\2\2\2\r\u00b6\3\2\2\2\17\u00b8\3\2\2\2\21"+
		"\u00ba\3\2\2\2\23\u00bc\3\2\2\2\25\u00be\3\2\2\2\27\u00c0\3\2\2\2\31\u00c2"+
		"\3\2\2\2\33\u00c4\3\2\2\2\35\u00c6\3\2\2\2\37\u00c8\3\2\2\2!\u00ca\3\2"+
		"\2\2#\u00cc\3\2\2\2%\u00ce\3\2\2\2\'\u00d0\3\2\2\2)\u00d2\3\2\2\2+\u00d4"+
		"\3\2\2\2-\u00d6\3\2\2\2/\u00d8\3\2\2\2\61\u00da\3\2\2\2\63\u00dc\3\2\2"+
		"\2\65\u00de\3\2\2\2\67\u00e0\3\2\2\29\u00e2\3\2\2\2;\u00e4\3\2\2\2=\u00e6"+
		"\3\2\2\2?\u00e8\3\2\2\2A\u00ea\3\2\2\2C\u00ec\3\2\2\2E\u00ee\3\2\2\2G"+
		"\u00f6\3\2\2\2I\u00fa\3\2\2\2K\u00ff\3\2\2\2M\u0105\3\2\2\2O\u010a\3\2"+
		"\2\2Q\u010f\3\2\2\2S\u0114\3\2\2\2U\u011b\3\2\2\2W\u011f\3\2\2\2Y\u0125"+
		"\3\2\2\2[\u0128\3\2\2\2]\u012d\3\2\2\2_\u0133\3\2\2\2a\u0137\3\2\2\2c"+
		"\u013a\3\2\2\2e\u013e\3\2\2\2g\u0141\3\2\2\2i\u0143\3\2\2\2k\u0145\3\2"+
		"\2\2m\u0147\3\2\2\2o\u0149\3\2\2\2q\u014b\3\2\2\2s\u014e\3\2\2\2u\u0150"+
		"\3\2\2\2w\u0153\3\2\2\2y\u0155\3\2\2\2{\u0157\3\2\2\2}\u015a\3\2\2\2\177"+
		"\u015d\3\2\2\2\u0081\u015f\3\2\2\2\u0083\u0161\3\2\2\2\u0085\u0163\3\2"+
		"\2\2\u0087\u0165\3\2\2\2\u0089\u0167\3\2\2\2\u008b\u0169\3\2\2\2\u008d"+
		"\u016b\3\2\2\2\u008f\u016d\3\2\2\2\u0091\u016f\3\2\2\2\u0093\u0171\3\2"+
		"\2\2\u0095\u0174\3\2\2\2\u0097\u0179\3\2\2\2\u0099\u017f\3\2\2\2\u009b"+
		"\u0189\3\2\2\2\u009d\u018e\3\2\2\2\u009f\u0198\3\2\2\2\u00a1\u019c\3\2"+
		"\2\2\u00a3\u01a4\3\2\2\2\u00a5\u00a6\7v\2\2\u00a6\u00a7\7t\2\2\u00a7\u00a8"+
		"\7w\2\2\u00a8\u00a9\7g\2\2\u00a9\4\3\2\2\2\u00aa\u00ab\7h\2\2\u00ab\u00ac"+
		"\7c\2\2\u00ac\u00ad\7n\2\2\u00ad\u00ae\7u\2\2\u00ae\u00af\7g\2\2\u00af"+
		"\6\3\2\2\2\u00b0\u00b1\t\2\2\2\u00b1\b\3\2\2\2\u00b2\u00b3\t\3\2\2\u00b3"+
		"\n\3\2\2\2\u00b4\u00b5\t\4\2\2\u00b5\f\3\2\2\2\u00b6\u00b7\t\5\2\2\u00b7"+
		"\16\3\2\2\2\u00b8\u00b9\t\6\2\2\u00b9\20\3\2\2\2\u00ba\u00bb\t\7\2\2\u00bb"+
		"\22\3\2\2\2\u00bc\u00bd\t\b\2\2\u00bd\24\3\2\2\2\u00be\u00bf\t\t\2\2\u00bf"+
		"\26\3\2\2\2\u00c0\u00c1\t\n\2\2\u00c1\30\3\2\2\2\u00c2\u00c3\t\13\2\2"+
		"\u00c3\32\3\2\2\2\u00c4\u00c5\t\f\2\2\u00c5\34\3\2\2\2\u00c6\u00c7\t\r"+
		"\2\2\u00c7\36\3\2\2\2\u00c8\u00c9\t\16\2\2\u00c9 \3\2\2\2\u00ca\u00cb"+
		"\t\17\2\2\u00cb\"\3\2\2\2\u00cc\u00cd\t\20\2\2\u00cd$\3\2\2\2\u00ce\u00cf"+
		"\t\21\2\2\u00cf&\3\2\2\2\u00d0\u00d1\t\22\2\2\u00d1(\3\2\2\2\u00d2\u00d3"+
		"\t\23\2\2\u00d3*\3\2\2\2\u00d4\u00d5\t\24\2\2\u00d5,\3\2\2\2\u00d6\u00d7"+
		"\t\25\2\2\u00d7.\3\2\2\2\u00d8\u00d9\t\26\2\2\u00d9\60\3\2\2\2\u00da\u00db"+
		"\t\27\2\2\u00db\62\3\2\2\2\u00dc\u00dd\t\30\2\2\u00dd\64\3\2\2\2\u00de"+
		"\u00df\t\31\2\2\u00df\66\3\2\2\2\u00e0\u00e1\t\32\2\2\u00e18\3\2\2\2\u00e2"+
		"\u00e3\t\33\2\2\u00e3:\3\2\2\2\u00e4\u00e5\7$\2\2\u00e5<\3\2\2\2\u00e6"+
		"\u00e7\7)\2\2\u00e7>\3\2\2\2\u00e8\u00e9\4\62;\2\u00e9@\3\2\2\2\u00ea"+
		"\u00eb\t\34\2\2\u00ebB\3\2\2\2\u00ec\u00ed\t\35\2\2\u00edD\3\2\2\2\u00ee"+
		"\u00ef\5\37\20\2\u00ef\u00f0\5\7\4\2\u00f0\u00f1\5%\23\2\u00f1\u00f2\5"+
		"\7\4\2\u00f2\u00f3\5\13\6\2\u00f3\u00f4\5\25\13\2\u00f4\u00f5\5\17\b\2"+
		"\u00f5F\3\2\2\2\u00f6\u00f7\5\27\f\2\u00f7\u00f8\5!\21\2\u00f8\u00f9\5"+
		"-\27\2\u00f9H\3\2\2\2\u00fa\u00fb\5\13\6\2\u00fb\u00fc\5\25\13\2\u00fc"+
		"\u00fd\5\7\4\2\u00fd\u00fe\5)\25\2\u00feJ\3\2\2\2\u00ff\u0100\5\21\t\2"+
		"\u0100\u0101\5\35\17\2\u0101\u0102\5#\22\2\u0102\u0103\5\7\4\2\u0103\u0104"+
		"\5-\27\2\u0104L\3\2\2\2\u0105\u0106\5\t\5\2\u0106\u0107\5#\22\2\u0107"+
		"\u0108\5#\22\2\u0108\u0109\5\35\17\2\u0109N\3\2\2\2\u010a\u010b\5\61\31"+
		"\2\u010b\u010c\5#\22\2\u010c\u010d\5\27\f\2\u010d\u010e\5\r\7\2\u010e"+
		"P\3\2\2\2\u010f\u0110\5\21\t\2\u0110\u0111\5/\30\2\u0111\u0112\5!\21\2"+
		"\u0112\u0113\5\13\6\2\u0113R\3\2\2\2\u0114\u0115\5)\25\2\u0115\u0116\5"+
		"\17\b\2\u0116\u0117\5-\27\2\u0117\u0118\5/\30\2\u0118\u0119\5)\25\2\u0119"+
		"\u011a\5!\21\2\u011aT\3\2\2\2\u011b\u011c\5\61\31\2\u011c\u011d\5\7\4"+
		"\2\u011d\u011e\5)\25\2\u011eV\3\2\2\2\u011f\u0120\5%\23\2\u0120\u0121"+
		"\5)\25\2\u0121\u0122\5\27\f\2\u0122\u0123\5!\21\2\u0123\u0124\5-\27\2"+
		"\u0124X\3\2\2\2\u0125\u0126\5\27\f\2\u0126\u0127\5\21\t\2\u0127Z\3\2\2"+
		"\2\u0128\u0129\5\17\b\2\u0129\u012a\5\35\17\2\u012a\u012b\5+\26\2\u012b"+
		"\u012c\5\17\b\2\u012c\\\3\2\2\2\u012d\u012e\5\63\32\2\u012e\u012f\5\25"+
		"\13\2\u012f\u0130\5\27\f\2\u0130\u0131\5\35\17\2\u0131\u0132\5\17\b\2"+
		"\u0132^\3\2\2\2\u0133\u0134\5\21\t\2\u0134\u0135\5#\22\2\u0135\u0136\5"+
		")\25\2\u0136`\3\2\2\2\u0137\u0138\5\27\f\2\u0138\u0139\5!\21\2\u0139b"+
		"\3\2\2\2\u013a\u013b\7\60\2\2\u013b\u013c\7\60\2\2\u013c\u013d\7\60\2"+
		"\2\u013dd\3\2\2\2\u013e\u013f\5\t\5\2\u013f\u0140\5\67\34\2\u0140f\3\2"+
		"\2\2\u0141\u0142\7-\2\2\u0142h\3\2\2\2\u0143\u0144\7/\2\2\u0144j\3\2\2"+
		"\2\u0145\u0146\7,\2\2\u0146l\3\2\2\2\u0147\u0148\7\61\2\2\u0148n\3\2\2"+
		"\2\u0149\u014a\7?\2\2\u014ap\3\2\2\2\u014b\u014c\7?\2\2\u014c\u014d\7"+
		"?\2\2\u014dr\3\2\2\2\u014e\u014f\7#\2\2\u014ft\3\2\2\2\u0150\u0151\7#"+
		"\2\2\u0151\u0152\7?\2\2\u0152v\3\2\2\2\u0153\u0154\7>\2\2\u0154x\3\2\2"+
		"\2\u0155\u0156\7@\2\2\u0156z\3\2\2\2\u0157\u0158\7(\2\2\u0158\u0159\7"+
		"(\2\2\u0159|\3\2\2\2\u015a\u015b\7~\2\2\u015b\u015c\7~\2\2\u015c~\3\2"+
		"\2\2\u015d\u015e\7]\2\2\u015e\u0080\3\2\2\2\u015f\u0160\7_\2\2\u0160\u0082"+
		"\3\2\2\2\u0161\u0162\7*\2\2\u0162\u0084\3\2\2\2\u0163\u0164\7+\2\2\u0164"+
		"\u0086\3\2\2\2\u0165\u0166\7}\2\2\u0166\u0088\3\2\2\2\u0167\u0168\7\177"+
		"\2\2\u0168\u008a\3\2\2\2\u0169\u016a\7.\2\2\u016a\u008c\3\2\2\2\u016b"+
		"\u016c\7<\2\2\u016c\u008e\3\2\2\2\u016d\u016e\7\60\2\2\u016e\u0090\3\2"+
		"\2\2\u016f\u0170\7=\2\2\u0170\u0092\3\2\2\2\u0171\u0172\7/\2\2\u0172\u0173"+
		"\7@\2\2\u0173\u0094\3\2\2\2\u0174\u0175\5-\27\2\u0175\u0176\5)\25\2\u0176"+
		"\u0177\5/\30\2\u0177\u0178\5\17\b\2\u0178\u0096\3\2\2\2\u0179\u017a\5"+
		"\21\t\2\u017a\u017b\5\7\4\2\u017b\u017c\5\35\17\2\u017c\u017d\5+\26\2"+
		"\u017d\u017e\5\17\b\2\u017e\u0098\3\2\2\2\u017f\u0183\5;\36\2\u0180\u0182"+
		"\13\2\2\2\u0181\u0180\3\2\2\2\u0182\u0185\3\2\2\2\u0183\u0184\3\2\2\2"+
		"\u0183\u0181\3\2\2\2\u0184\u0186\3\2\2\2\u0185\u0183\3\2\2\2\u0186\u0187"+
		"\5;\36\2\u0187\u009a\3\2\2\2\u0188\u018a\5? \2\u0189\u0188\3\2\2\2\u018a"+
		"\u018b\3\2\2\2\u018b\u0189\3\2\2\2\u018b\u018c\3\2\2\2\u018c\u009c\3\2"+
		"\2\2\u018d\u018f\5? \2\u018e\u018d\3\2\2\2\u018f\u0190\3\2\2\2\u0190\u018e"+
		"\3\2\2\2\u0190\u0191\3\2\2\2\u0191\u0192\3\2\2\2\u0192\u0194\5\u008fH"+
		"\2\u0193\u0195\5? \2\u0194\u0193\3\2\2\2\u0195\u0196\3\2\2\2\u0196\u0194"+
		"\3\2\2\2\u0196\u0197\3\2\2\2\u0197\u009e\3\2\2\2\u0198\u0199\5=\37\2\u0199"+
		"\u019a\t\36\2\2\u019a\u019b\5=\37\2\u019b\u00a0\3\2\2\2\u019c\u01a0\t"+
		"\37\2\2\u019d\u019f\t\36\2\2\u019e\u019d\3\2\2\2\u019f\u01a2\3\2\2\2\u01a0"+
		"\u019e\3\2\2\2\u01a0\u01a1\3\2\2\2\u01a1\u00a2\3\2\2\2\u01a2\u01a0\3\2"+
		"\2\2\u01a3\u01a5\t \2\2\u01a4\u01a3\3\2\2\2\u01a5\u01a6\3\2\2\2\u01a6"+
		"\u01a4\3\2\2\2\u01a6\u01a7\3\2\2\2\u01a7\u01a8\3\2\2\2\u01a8\u01a9\bR"+
		"\2\2\u01a9\u00a4\3\2\2\2\t\2\u0183\u018b\u0190\u0196\u01a0\u01a6\3\b\2"+
		"\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}