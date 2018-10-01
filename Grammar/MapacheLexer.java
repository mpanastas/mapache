// Generated from Mapache.g4 by ANTLR 4.7.1
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
		MAPACHE=1, INT=2, CHAR=3, FLOAT=4, BOOL=5, VOID=6, FUNC=7, RETURN=8, VAR=9, 
		PRINT=10, IF=11, ELSE=12, WHILE=13, FOR=14, IN=15, DOTS=16, BY=17, PLUS=18, 
		MINUS=19, MULTIPLY=20, DIVISION=21, ASSIGN=22, EQUAL=23, NOT=24, NOT_EQUAL=25, 
		LESS_THAN=26, GREATER_THAN=27, AND=28, OR=29, OPEN_BRACKET=30, CLOSE_BRACKET=31, 
		OPEN_PAREN=32, CLOSE_PAREN=33, OPEN_CURLY=34, CLOSE_CURLY=35, COMMA=36, 
		COLON=37, DOT=38, SEMICOLON=39, ARROW=40, TRUE=41, FALSE=42, LETRERO=43, 
		CONST_I=44, CONST_F=45, CONST_B=46, CONST_C=47, ID=48, TEXT=49, WS=50;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	public static final String[] ruleNames = {
		"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", 
		"O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "QUOTE", "APOS", 
		"SIGN", "DIGIT", "LOWERCASE", "UPPERCASE", "MAPACHE", "INT", "CHAR", "FLOAT", 
		"BOOL", "VOID", "FUNC", "RETURN", "VAR", "PRINT", "IF", "ELSE", "WHILE", 
		"FOR", "IN", "DOTS", "BY", "PLUS", "MINUS", "MULTIPLY", "DIVISION", "ASSIGN", 
		"EQUAL", "NOT", "NOT_EQUAL", "LESS_THAN", "GREATER_THAN", "AND", "OR", 
		"OPEN_BRACKET", "CLOSE_BRACKET", "OPEN_PAREN", "CLOSE_PAREN", "OPEN_CURLY", 
		"CLOSE_CURLY", "COMMA", "COLON", "DOT", "SEMICOLON", "ARROW", "TRUE", 
		"FALSE", "LETRERO", "CONST_I", "CONST_F", "CONST_B", "CONST_C", "ID", 
		"TEXT", "WS"
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
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\64\u01b0\b\1\4\2"+
		"\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4"+
		"\13\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22"+
		"\t\22\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31"+
		"\t\31\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t"+
		" \4!\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t"+
		"+\4,\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64"+
		"\t\64\4\65\t\65\4\66\t\66\4\67\t\67\48\t8\49\t9\4:\t:\4;\t;\4<\t<\4=\t"+
		"=\4>\t>\4?\t?\4@\t@\4A\tA\4B\tB\4C\tC\4D\tD\4E\tE\4F\tF\4G\tG\4H\tH\4"+
		"I\tI\4J\tJ\4K\tK\4L\tL\4M\tM\4N\tN\4O\tO\4P\tP\4Q\tQ\4R\tR\4S\tS\3\2\3"+
		"\2\3\3\3\3\3\4\3\4\3\5\3\5\3\6\3\6\3\7\3\7\3\b\3\b\3\t\3\t\3\n\3\n\3\13"+
		"\3\13\3\f\3\f\3\r\3\r\3\16\3\16\3\17\3\17\3\20\3\20\3\21\3\21\3\22\3\22"+
		"\3\23\3\23\3\24\3\24\3\25\3\25\3\26\3\26\3\27\3\27\3\30\3\30\3\31\3\31"+
		"\3\32\3\32\3\33\3\33\3\34\3\34\3\35\3\35\3\36\3\36\3\37\3\37\3 \3 \3!"+
		"\3!\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3#\3#\3#\3#\3$\3$\3$\3$\3$\3%\3%\3"+
		"%\3%\3%\3%\3&\3&\3&\3&\3&\3\'\3\'\3\'\3\'\3\'\3(\3(\3(\3(\3(\3)\3)\3)"+
		"\3)\3)\3)\3)\3*\3*\3*\3*\3+\3+\3+\3+\3+\3+\3,\3,\3,\3-\3-\3-\3-\3-\3."+
		"\3.\3.\3.\3.\3.\3/\3/\3/\3/\3\60\3\60\3\60\3\61\3\61\3\61\3\61\3\62\3"+
		"\62\3\62\3\63\3\63\3\64\3\64\3\65\3\65\3\66\3\66\3\67\3\67\38\38\38\3"+
		"9\39\3:\3:\3:\3;\3;\3<\3<\3=\3=\3=\3>\3>\3>\3?\3?\3@\3@\3A\3A\3B\3B\3"+
		"C\3C\3D\3D\3E\3E\3F\3F\3G\3G\3H\3H\3I\3I\3I\3J\3J\3J\3J\3J\3K\3K\3K\3"+
		"K\3K\3K\3L\3L\7L\u017b\nL\fL\16L\u017e\13L\3L\3L\3M\6M\u0183\nM\rM\16"+
		"M\u0184\3N\6N\u0188\nN\rN\16N\u0189\3N\3N\6N\u018e\nN\rN\16N\u018f\3O"+
		"\3O\5O\u0194\nO\3P\3P\3P\3P\3Q\3Q\7Q\u019c\nQ\fQ\16Q\u019f\13Q\3R\3R\7"+
		"R\u01a3\nR\fR\16R\u01a6\13R\3R\3R\3S\6S\u01ab\nS\rS\16S\u01ac\3S\3S\3"+
		"\u017c\2T\3\2\5\2\7\2\t\2\13\2\r\2\17\2\21\2\23\2\25\2\27\2\31\2\33\2"+
		"\35\2\37\2!\2#\2%\2\'\2)\2+\2-\2/\2\61\2\63\2\65\2\67\29\2;\2=\2?\2A\2"+
		"C\3E\4G\5I\6K\7M\bO\tQ\nS\13U\fW\rY\16[\17]\20_\21a\22c\23e\24g\25i\26"+
		"k\27m\30o\31q\32s\33u\34w\35y\36{\37} \177!\u0081\"\u0083#\u0085$\u0087"+
		"%\u0089&\u008b\'\u008d(\u008f)\u0091*\u0093+\u0095,\u0097-\u0099.\u009b"+
		"/\u009d\60\u009f\61\u00a1\62\u00a3\63\u00a5\64\3\2\"\4\2CCcc\4\2DDdd\4"+
		"\2EEee\4\2FFff\4\2GGgg\4\2HHhh\4\2IIii\4\2JJjj\4\2KKkk\4\2LLll\4\2MMm"+
		"m\4\2NNnn\4\2OOoo\4\2PPpp\4\2QQqq\4\2RRrr\4\2SSss\4\2TTtt\4\2UUuu\4\2"+
		"VVvv\4\2WWww\4\2XXxx\4\2YYyy\4\2ZZzz\4\2[[{{\4\2\\\\||\4\2--//\3\2c|\3"+
		"\2C\\\6\2\62;C\\aac|\4\2C\\c|\5\2\13\f\17\17\"\"\2\u0197\2C\3\2\2\2\2"+
		"E\3\2\2\2\2G\3\2\2\2\2I\3\2\2\2\2K\3\2\2\2\2M\3\2\2\2\2O\3\2\2\2\2Q\3"+
		"\2\2\2\2S\3\2\2\2\2U\3\2\2\2\2W\3\2\2\2\2Y\3\2\2\2\2[\3\2\2\2\2]\3\2\2"+
		"\2\2_\3\2\2\2\2a\3\2\2\2\2c\3\2\2\2\2e\3\2\2\2\2g\3\2\2\2\2i\3\2\2\2\2"+
		"k\3\2\2\2\2m\3\2\2\2\2o\3\2\2\2\2q\3\2\2\2\2s\3\2\2\2\2u\3\2\2\2\2w\3"+
		"\2\2\2\2y\3\2\2\2\2{\3\2\2\2\2}\3\2\2\2\2\177\3\2\2\2\2\u0081\3\2\2\2"+
		"\2\u0083\3\2\2\2\2\u0085\3\2\2\2\2\u0087\3\2\2\2\2\u0089\3\2\2\2\2\u008b"+
		"\3\2\2\2\2\u008d\3\2\2\2\2\u008f\3\2\2\2\2\u0091\3\2\2\2\2\u0093\3\2\2"+
		"\2\2\u0095\3\2\2\2\2\u0097\3\2\2\2\2\u0099\3\2\2\2\2\u009b\3\2\2\2\2\u009d"+
		"\3\2\2\2\2\u009f\3\2\2\2\2\u00a1\3\2\2\2\2\u00a3\3\2\2\2\2\u00a5\3\2\2"+
		"\2\3\u00a7\3\2\2\2\5\u00a9\3\2\2\2\7\u00ab\3\2\2\2\t\u00ad\3\2\2\2\13"+
		"\u00af\3\2\2\2\r\u00b1\3\2\2\2\17\u00b3\3\2\2\2\21\u00b5\3\2\2\2\23\u00b7"+
		"\3\2\2\2\25\u00b9\3\2\2\2\27\u00bb\3\2\2\2\31\u00bd\3\2\2\2\33\u00bf\3"+
		"\2\2\2\35\u00c1\3\2\2\2\37\u00c3\3\2\2\2!\u00c5\3\2\2\2#\u00c7\3\2\2\2"+
		"%\u00c9\3\2\2\2\'\u00cb\3\2\2\2)\u00cd\3\2\2\2+\u00cf\3\2\2\2-\u00d1\3"+
		"\2\2\2/\u00d3\3\2\2\2\61\u00d5\3\2\2\2\63\u00d7\3\2\2\2\65\u00d9\3\2\2"+
		"\2\67\u00db\3\2\2\29\u00dd\3\2\2\2;\u00df\3\2\2\2=\u00e1\3\2\2\2?\u00e3"+
		"\3\2\2\2A\u00e5\3\2\2\2C\u00e7\3\2\2\2E\u00ef\3\2\2\2G\u00f3\3\2\2\2I"+
		"\u00f8\3\2\2\2K\u00fe\3\2\2\2M\u0103\3\2\2\2O\u0108\3\2\2\2Q\u010d\3\2"+
		"\2\2S\u0114\3\2\2\2U\u0118\3\2\2\2W\u011e\3\2\2\2Y\u0121\3\2\2\2[\u0126"+
		"\3\2\2\2]\u012c\3\2\2\2_\u0130\3\2\2\2a\u0133\3\2\2\2c\u0137\3\2\2\2e"+
		"\u013a\3\2\2\2g\u013c\3\2\2\2i\u013e\3\2\2\2k\u0140\3\2\2\2m\u0142\3\2"+
		"\2\2o\u0144\3\2\2\2q\u0147\3\2\2\2s\u0149\3\2\2\2u\u014c\3\2\2\2w\u014e"+
		"\3\2\2\2y\u0150\3\2\2\2{\u0153\3\2\2\2}\u0156\3\2\2\2\177\u0158\3\2\2"+
		"\2\u0081\u015a\3\2\2\2\u0083\u015c\3\2\2\2\u0085\u015e\3\2\2\2\u0087\u0160"+
		"\3\2\2\2\u0089\u0162\3\2\2\2\u008b\u0164\3\2\2\2\u008d\u0166\3\2\2\2\u008f"+
		"\u0168\3\2\2\2\u0091\u016a\3\2\2\2\u0093\u016d\3\2\2\2\u0095\u0172\3\2"+
		"\2\2\u0097\u0178\3\2\2\2\u0099\u0182\3\2\2\2\u009b\u0187\3\2\2\2\u009d"+
		"\u0193\3\2\2\2\u009f\u0195\3\2\2\2\u00a1\u0199\3\2\2\2\u00a3\u01a0\3\2"+
		"\2\2\u00a5\u01aa\3\2\2\2\u00a7\u00a8\t\2\2\2\u00a8\4\3\2\2\2\u00a9\u00aa"+
		"\t\3\2\2\u00aa\6\3\2\2\2\u00ab\u00ac\t\4\2\2\u00ac\b\3\2\2\2\u00ad\u00ae"+
		"\t\5\2\2\u00ae\n\3\2\2\2\u00af\u00b0\t\6\2\2\u00b0\f\3\2\2\2\u00b1\u00b2"+
		"\t\7\2\2\u00b2\16\3\2\2\2\u00b3\u00b4\t\b\2\2\u00b4\20\3\2\2\2\u00b5\u00b6"+
		"\t\t\2\2\u00b6\22\3\2\2\2\u00b7\u00b8\t\n\2\2\u00b8\24\3\2\2\2\u00b9\u00ba"+
		"\t\13\2\2\u00ba\26\3\2\2\2\u00bb\u00bc\t\f\2\2\u00bc\30\3\2\2\2\u00bd"+
		"\u00be\t\r\2\2\u00be\32\3\2\2\2\u00bf\u00c0\t\16\2\2\u00c0\34\3\2\2\2"+
		"\u00c1\u00c2\t\17\2\2\u00c2\36\3\2\2\2\u00c3\u00c4\t\20\2\2\u00c4 \3\2"+
		"\2\2\u00c5\u00c6\t\21\2\2\u00c6\"\3\2\2\2\u00c7\u00c8\t\22\2\2\u00c8$"+
		"\3\2\2\2\u00c9\u00ca\t\23\2\2\u00ca&\3\2\2\2\u00cb\u00cc\t\24\2\2\u00cc"+
		"(\3\2\2\2\u00cd\u00ce\t\25\2\2\u00ce*\3\2\2\2\u00cf\u00d0\t\26\2\2\u00d0"+
		",\3\2\2\2\u00d1\u00d2\t\27\2\2\u00d2.\3\2\2\2\u00d3\u00d4\t\30\2\2\u00d4"+
		"\60\3\2\2\2\u00d5\u00d6\t\31\2\2\u00d6\62\3\2\2\2\u00d7\u00d8\t\32\2\2"+
		"\u00d8\64\3\2\2\2\u00d9\u00da\t\33\2\2\u00da\66\3\2\2\2\u00db\u00dc\7"+
		"$\2\2\u00dc8\3\2\2\2\u00dd\u00de\7)\2\2\u00de:\3\2\2\2\u00df\u00e0\t\34"+
		"\2\2\u00e0<\3\2\2\2\u00e1\u00e2\4\62;\2\u00e2>\3\2\2\2\u00e3\u00e4\t\35"+
		"\2\2\u00e4@\3\2\2\2\u00e5\u00e6\t\36\2\2\u00e6B\3\2\2\2\u00e7\u00e8\5"+
		"\33\16\2\u00e8\u00e9\5\3\2\2\u00e9\u00ea\5!\21\2\u00ea\u00eb\5\3\2\2\u00eb"+
		"\u00ec\5\7\4\2\u00ec\u00ed\5\21\t\2\u00ed\u00ee\5\13\6\2\u00eeD\3\2\2"+
		"\2\u00ef\u00f0\5\23\n\2\u00f0\u00f1\5\35\17\2\u00f1\u00f2\5)\25\2\u00f2"+
		"F\3\2\2\2\u00f3\u00f4\5\7\4\2\u00f4\u00f5\5\21\t\2\u00f5\u00f6\5\3\2\2"+
		"\u00f6\u00f7\5%\23\2\u00f7H\3\2\2\2\u00f8\u00f9\5\r\7\2\u00f9\u00fa\5"+
		"\31\r\2\u00fa\u00fb\5\37\20\2\u00fb\u00fc\5\3\2\2\u00fc\u00fd\5)\25\2"+
		"\u00fdJ\3\2\2\2\u00fe\u00ff\5\5\3\2\u00ff\u0100\5\37\20\2\u0100\u0101"+
		"\5\37\20\2\u0101\u0102\5\31\r\2\u0102L\3\2\2\2\u0103\u0104\5-\27\2\u0104"+
		"\u0105\5\37\20\2\u0105\u0106\5\23\n\2\u0106\u0107\5\t\5\2\u0107N\3\2\2"+
		"\2\u0108\u0109\5\r\7\2\u0109\u010a\5+\26\2\u010a\u010b\5\35\17\2\u010b"+
		"\u010c\5\7\4\2\u010cP\3\2\2\2\u010d\u010e\5%\23\2\u010e\u010f\5\13\6\2"+
		"\u010f\u0110\5)\25\2\u0110\u0111\5+\26\2\u0111\u0112\5%\23\2\u0112\u0113"+
		"\5\35\17\2\u0113R\3\2\2\2\u0114\u0115\5-\27\2\u0115\u0116\5\3\2\2\u0116"+
		"\u0117\5%\23\2\u0117T\3\2\2\2\u0118\u0119\5!\21\2\u0119\u011a\5%\23\2"+
		"\u011a\u011b\5\23\n\2\u011b\u011c\5\35\17\2\u011c\u011d\5)\25\2\u011d"+
		"V\3\2\2\2\u011e\u011f\5\23\n\2\u011f\u0120\5\r\7\2\u0120X\3\2\2\2\u0121"+
		"\u0122\5\13\6\2\u0122\u0123\5\31\r\2\u0123\u0124\5\'\24\2\u0124\u0125"+
		"\5\13\6\2\u0125Z\3\2\2\2\u0126\u0127\5/\30\2\u0127\u0128\5\21\t\2\u0128"+
		"\u0129\5\23\n\2\u0129\u012a\5\31\r\2\u012a\u012b\5\13\6\2\u012b\\\3\2"+
		"\2\2\u012c\u012d\5\r\7\2\u012d\u012e\5\37\20\2\u012e\u012f\5%\23\2\u012f"+
		"^\3\2\2\2\u0130\u0131\5\23\n\2\u0131\u0132\5\35\17\2\u0132`\3\2\2\2\u0133"+
		"\u0134\7\60\2\2\u0134\u0135\7\60\2\2\u0135\u0136\7\60\2\2\u0136b\3\2\2"+
		"\2\u0137\u0138\5\5\3\2\u0138\u0139\5\63\32\2\u0139d\3\2\2\2\u013a\u013b"+
		"\7-\2\2\u013bf\3\2\2\2\u013c\u013d\7/\2\2\u013dh\3\2\2\2\u013e\u013f\7"+
		",\2\2\u013fj\3\2\2\2\u0140\u0141\7\61\2\2\u0141l\3\2\2\2\u0142\u0143\7"+
		"?\2\2\u0143n\3\2\2\2\u0144\u0145\7?\2\2\u0145\u0146\7?\2\2\u0146p\3\2"+
		"\2\2\u0147\u0148\7#\2\2\u0148r\3\2\2\2\u0149\u014a\7#\2\2\u014a\u014b"+
		"\7?\2\2\u014bt\3\2\2\2\u014c\u014d\7>\2\2\u014dv\3\2\2\2\u014e\u014f\7"+
		"@\2\2\u014fx\3\2\2\2\u0150\u0151\7(\2\2\u0151\u0152\7(\2\2\u0152z\3\2"+
		"\2\2\u0153\u0154\7~\2\2\u0154\u0155\7~\2\2\u0155|\3\2\2\2\u0156\u0157"+
		"\7]\2\2\u0157~\3\2\2\2\u0158\u0159\7_\2\2\u0159\u0080\3\2\2\2\u015a\u015b"+
		"\7*\2\2\u015b\u0082\3\2\2\2\u015c\u015d\7+\2\2\u015d\u0084\3\2\2\2\u015e"+
		"\u015f\7}\2\2\u015f\u0086\3\2\2\2\u0160\u0161\7\177\2\2\u0161\u0088\3"+
		"\2\2\2\u0162\u0163\7.\2\2\u0163\u008a\3\2\2\2\u0164\u0165\7<\2\2\u0165"+
		"\u008c\3\2\2\2\u0166\u0167\7\60\2\2\u0167\u008e\3\2\2\2\u0168\u0169\7"+
		"=\2\2\u0169\u0090\3\2\2\2\u016a\u016b\7/\2\2\u016b\u016c\7@\2\2\u016c"+
		"\u0092\3\2\2\2\u016d\u016e\5)\25\2\u016e\u016f\5%\23\2\u016f\u0170\5+"+
		"\26\2\u0170\u0171\5\13\6\2\u0171\u0094\3\2\2\2\u0172\u0173\5\r\7\2\u0173"+
		"\u0174\5\3\2\2\u0174\u0175\5\31\r\2\u0175\u0176\5\'\24\2\u0176\u0177\5"+
		"\13\6\2\u0177\u0096\3\2\2\2\u0178\u017c\5\67\34\2\u0179\u017b\13\2\2\2"+
		"\u017a\u0179\3\2\2\2\u017b\u017e\3\2\2\2\u017c\u017d\3\2\2\2\u017c\u017a"+
		"\3\2\2\2\u017d\u017f\3\2\2\2\u017e\u017c\3\2\2\2\u017f\u0180\5\67\34\2"+
		"\u0180\u0098\3\2\2\2\u0181\u0183\5=\37\2\u0182\u0181\3\2\2\2\u0183\u0184"+
		"\3\2\2\2\u0184\u0182\3\2\2\2\u0184\u0185\3\2\2\2\u0185\u009a\3\2\2\2\u0186"+
		"\u0188\5=\37\2\u0187\u0186\3\2\2\2\u0188\u0189\3\2\2\2\u0189\u0187\3\2"+
		"\2\2\u0189\u018a\3\2\2\2\u018a\u018b\3\2\2\2\u018b\u018d\5\u008dG\2\u018c"+
		"\u018e\5=\37\2\u018d\u018c\3\2\2\2\u018e\u018f\3\2\2\2\u018f\u018d\3\2"+
		"\2\2\u018f\u0190\3\2\2\2\u0190\u009c\3\2\2\2\u0191\u0194\5\u0093J\2\u0192"+
		"\u0194\5\u0095K\2\u0193\u0191\3\2\2\2\u0193\u0192\3\2\2\2\u0194\u009e"+
		"\3\2\2\2\u0195\u0196\59\35\2\u0196\u0197\t\37\2\2\u0197\u0198\59\35\2"+
		"\u0198\u00a0\3\2\2\2\u0199\u019d\t \2\2\u019a\u019c\t\37\2\2\u019b\u019a"+
		"\3\2\2\2\u019c\u019f\3\2\2\2\u019d\u019b\3\2\2\2\u019d\u019e\3\2\2\2\u019e"+
		"\u00a2\3\2\2\2\u019f\u019d\3\2\2\2\u01a0\u01a4\5\67\34\2\u01a1\u01a3\t"+
		"\37\2\2\u01a2\u01a1\3\2\2\2\u01a3\u01a6\3\2\2\2\u01a4\u01a2\3\2\2\2\u01a4"+
		"\u01a5\3\2\2\2\u01a5\u01a7\3\2\2\2\u01a6\u01a4\3\2\2\2\u01a7\u01a8\5\67"+
		"\34\2\u01a8\u00a4\3\2\2\2\u01a9\u01ab\t!\2\2\u01aa\u01a9\3\2\2\2\u01ab"+
		"\u01ac\3\2\2\2\u01ac\u01aa\3\2\2\2\u01ac\u01ad\3\2\2\2\u01ad\u01ae\3\2"+
		"\2\2\u01ae\u01af\bS\2\2\u01af\u00a6\3\2\2\2\13\2\u017c\u0184\u0189\u018f"+
		"\u0193\u019d\u01a4\u01ac\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}