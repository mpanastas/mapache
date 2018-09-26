// Generated from /Users/luisfelipesv/Documents/GitHub/mapache/Grammar/Mapache.g4 by ANTLR 4.7.1
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
		PROGRAM=1, INT=2, CHAR=3, FLOAT=4, BOOL=5, FUNC=6, RETURN=7, VAR=8, PRINT=9, 
		IF=10, ELSE=11, WHILE=12, FOR=13, IN=14, DOTS=15, BY=16, PLUS=17, MINUS=18, 
		MULTIPLY=19, DIVISION=20, ASSIGN=21, EQUAL=22, NOT=23, NOT_EQUAL=24, LESS_THAN=25, 
		GREATER_THAN=26, AND=27, OR=28, OPEN_BRACKET=29, CLOSE_BRACKET=30, OPEN_PAREN=31, 
		CLOSE_PAREN=32, OPEN_CURLY=33, CLOSE_CURLY=34, COMMA=35, COLON=36, DOT=37, 
		SEMICOLON=38, ARROW=39, TRUE=40, FALSE=41, LETRERO=42, CONST_I=43, CONST_F=44, 
		CONST_B=45, CONST_C=46, ID=47, TEXT=48, WS=49;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	public static final String[] ruleNames = {
		"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", 
		"O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "QUOTE", "APOS", 
		"SIGN", "DIGIT", "LOWERCASE", "UPPERCASE", "PROGRAM", "INT", "CHAR", "FLOAT", 
		"BOOL", "FUNC", "RETURN", "VAR", "PRINT", "IF", "ELSE", "WHILE", "FOR", 
		"IN", "DOTS", "BY", "PLUS", "MINUS", "MULTIPLY", "DIVISION", "ASSIGN", 
		"EQUAL", "NOT", "NOT_EQUAL", "LESS_THAN", "GREATER_THAN", "AND", "OR", 
		"OPEN_BRACKET", "CLOSE_BRACKET", "OPEN_PAREN", "CLOSE_PAREN", "OPEN_CURLY", 
		"CLOSE_CURLY", "COMMA", "COLON", "DOT", "SEMICOLON", "ARROW", "TRUE", 
		"FALSE", "LETRERO", "CONST_I", "CONST_F", "CONST_B", "CONST_C", "ID", 
		"TEXT", "WS"
	};

	private static final String[] _LITERAL_NAMES = {
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, "PROGRAM", "INT", "CHAR", "FLOAT", "BOOL", "FUNC", "RETURN", "VAR", 
		"PRINT", "IF", "ELSE", "WHILE", "FOR", "IN", "DOTS", "BY", "PLUS", "MINUS", 
		"MULTIPLY", "DIVISION", "ASSIGN", "EQUAL", "NOT", "NOT_EQUAL", "LESS_THAN", 
		"GREATER_THAN", "AND", "OR", "OPEN_BRACKET", "CLOSE_BRACKET", "OPEN_PAREN", 
		"CLOSE_PAREN", "OPEN_CURLY", "CLOSE_CURLY", "COMMA", "COLON", "DOT", "SEMICOLON", 
		"ARROW", "TRUE", "FALSE", "LETRERO", "CONST_I", "CONST_F", "CONST_B", 
		"CONST_C", "ID", "TEXT", "WS"
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
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\63\u01a8\b\1\4\2"+
		"\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4"+
		"\13\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22"+
		"\t\22\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31"+
		"\t\31\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t"+
		" \4!\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t"+
		"+\4,\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64"+
		"\t\64\4\65\t\65\4\66\t\66\4\67\t\67\48\t8\49\t9\4:\t:\4;\t;\4<\t<\4=\t"+
		"=\4>\t>\4?\t?\4@\t@\4A\tA\4B\tB\4C\tC\4D\tD\4E\tE\4F\tF\4G\tG\4H\tH\4"+
		"I\tI\4J\tJ\4K\tK\4L\tL\4M\tM\4N\tN\4O\tO\4P\tP\4Q\tQ\4R\tR\3\2\3\2\3\3"+
		"\3\3\3\4\3\4\3\5\3\5\3\6\3\6\3\7\3\7\3\b\3\b\3\t\3\t\3\n\3\n\3\13\3\13"+
		"\3\f\3\f\3\r\3\r\3\16\3\16\3\17\3\17\3\20\3\20\3\21\3\21\3\22\3\22\3\23"+
		"\3\23\3\24\3\24\3\25\3\25\3\26\3\26\3\27\3\27\3\30\3\30\3\31\3\31\3\32"+
		"\3\32\3\33\3\33\3\34\3\34\3\35\3\35\3\36\3\36\3\37\3\37\3 \3 \3!\3!\3"+
		"\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3#\3#\3#\3#\3$\3$\3$\3$\3$\3%\3%\3%\3%"+
		"\3%\3%\3&\3&\3&\3&\3&\3\'\3\'\3\'\3\'\3\'\3(\3(\3(\3(\3(\3(\3(\3)\3)\3"+
		")\3)\3*\3*\3*\3*\3*\3*\3+\3+\3+\3,\3,\3,\3,\3,\3-\3-\3-\3-\3-\3-\3.\3"+
		".\3.\3.\3/\3/\3/\3\60\3\60\3\60\3\60\3\61\3\61\3\61\3\62\3\62\3\63\3\63"+
		"\3\64\3\64\3\65\3\65\3\66\3\66\3\67\3\67\3\67\38\38\39\39\39\3:\3:\3;"+
		"\3;\3<\3<\3<\3=\3=\3=\3>\3>\3?\3?\3@\3@\3A\3A\3B\3B\3C\3C\3D\3D\3E\3E"+
		"\3F\3F\3G\3G\3H\3H\3H\3I\3I\3I\3I\3I\3J\3J\3J\3J\3J\3J\3K\3K\7K\u0174"+
		"\nK\fK\16K\u0177\13K\3K\3K\3L\6L\u017c\nL\rL\16L\u017d\3M\6M\u0181\nM"+
		"\rM\16M\u0182\3M\3M\6M\u0187\nM\rM\16M\u0188\3N\3N\5N\u018d\nN\3O\3O\3"+
		"O\3P\3P\7P\u0194\nP\fP\16P\u0197\13P\3Q\3Q\7Q\u019b\nQ\fQ\16Q\u019e\13"+
		"Q\3Q\3Q\3R\6R\u01a3\nR\rR\16R\u01a4\3R\3R\4\u0175\u019c\2S\3\2\5\2\7\2"+
		"\t\2\13\2\r\2\17\2\21\2\23\2\25\2\27\2\31\2\33\2\35\2\37\2!\2#\2%\2\'"+
		"\2)\2+\2-\2/\2\61\2\63\2\65\2\67\29\2;\2=\2?\2A\2C\3E\4G\5I\6K\7M\bO\t"+
		"Q\nS\13U\fW\rY\16[\17]\20_\21a\22c\23e\24g\25i\26k\27m\30o\31q\32s\33"+
		"u\34w\35y\36{\37} \177!\u0081\"\u0083#\u0085$\u0087%\u0089&\u008b\'\u008d"+
		"(\u008f)\u0091*\u0093+\u0095,\u0097-\u0099.\u009b/\u009d\60\u009f\61\u00a1"+
		"\62\u00a3\63\3\2$\4\2CCcc\4\2DDdd\4\2EEee\4\2FFff\4\2GGgg\4\2HHhh\4\2"+
		"IIii\4\2JJjj\4\2KKkk\4\2LLll\4\2MMmm\4\2NNnn\4\2OOoo\4\2PPpp\4\2QQqq\4"+
		"\2RRrr\4\2SSss\4\2TTtt\4\2UUuu\4\2VVvv\4\2WWww\4\2XXxx\4\2YYyy\4\2ZZz"+
		"z\4\2[[{{\4\2\\\\||\4\2--//\3\2c|\3\2C\\\4\2C\\c|\6\2\62;C\\aac|\4\2*"+
		"*]]\4\2++__\5\2\13\f\17\17\"\"\2\u018f\2C\3\2\2\2\2E\3\2\2\2\2G\3\2\2"+
		"\2\2I\3\2\2\2\2K\3\2\2\2\2M\3\2\2\2\2O\3\2\2\2\2Q\3\2\2\2\2S\3\2\2\2\2"+
		"U\3\2\2\2\2W\3\2\2\2\2Y\3\2\2\2\2[\3\2\2\2\2]\3\2\2\2\2_\3\2\2\2\2a\3"+
		"\2\2\2\2c\3\2\2\2\2e\3\2\2\2\2g\3\2\2\2\2i\3\2\2\2\2k\3\2\2\2\2m\3\2\2"+
		"\2\2o\3\2\2\2\2q\3\2\2\2\2s\3\2\2\2\2u\3\2\2\2\2w\3\2\2\2\2y\3\2\2\2\2"+
		"{\3\2\2\2\2}\3\2\2\2\2\177\3\2\2\2\2\u0081\3\2\2\2\2\u0083\3\2\2\2\2\u0085"+
		"\3\2\2\2\2\u0087\3\2\2\2\2\u0089\3\2\2\2\2\u008b\3\2\2\2\2\u008d\3\2\2"+
		"\2\2\u008f\3\2\2\2\2\u0091\3\2\2\2\2\u0093\3\2\2\2\2\u0095\3\2\2\2\2\u0097"+
		"\3\2\2\2\2\u0099\3\2\2\2\2\u009b\3\2\2\2\2\u009d\3\2\2\2\2\u009f\3\2\2"+
		"\2\2\u00a1\3\2\2\2\2\u00a3\3\2\2\2\3\u00a5\3\2\2\2\5\u00a7\3\2\2\2\7\u00a9"+
		"\3\2\2\2\t\u00ab\3\2\2\2\13\u00ad\3\2\2\2\r\u00af\3\2\2\2\17\u00b1\3\2"+
		"\2\2\21\u00b3\3\2\2\2\23\u00b5\3\2\2\2\25\u00b7\3\2\2\2\27\u00b9\3\2\2"+
		"\2\31\u00bb\3\2\2\2\33\u00bd\3\2\2\2\35\u00bf\3\2\2\2\37\u00c1\3\2\2\2"+
		"!\u00c3\3\2\2\2#\u00c5\3\2\2\2%\u00c7\3\2\2\2\'\u00c9\3\2\2\2)\u00cb\3"+
		"\2\2\2+\u00cd\3\2\2\2-\u00cf\3\2\2\2/\u00d1\3\2\2\2\61\u00d3\3\2\2\2\63"+
		"\u00d5\3\2\2\2\65\u00d7\3\2\2\2\67\u00d9\3\2\2\29\u00db\3\2\2\2;\u00dd"+
		"\3\2\2\2=\u00df\3\2\2\2?\u00e1\3\2\2\2A\u00e3\3\2\2\2C\u00e5\3\2\2\2E"+
		"\u00ed\3\2\2\2G\u00f1\3\2\2\2I\u00f6\3\2\2\2K\u00fc\3\2\2\2M\u0101\3\2"+
		"\2\2O\u0106\3\2\2\2Q\u010d\3\2\2\2S\u0111\3\2\2\2U\u0117\3\2\2\2W\u011a"+
		"\3\2\2\2Y\u011f\3\2\2\2[\u0125\3\2\2\2]\u0129\3\2\2\2_\u012c\3\2\2\2a"+
		"\u0130\3\2\2\2c\u0133\3\2\2\2e\u0135\3\2\2\2g\u0137\3\2\2\2i\u0139\3\2"+
		"\2\2k\u013b\3\2\2\2m\u013d\3\2\2\2o\u0140\3\2\2\2q\u0142\3\2\2\2s\u0145"+
		"\3\2\2\2u\u0147\3\2\2\2w\u0149\3\2\2\2y\u014c\3\2\2\2{\u014f\3\2\2\2}"+
		"\u0151\3\2\2\2\177\u0153\3\2\2\2\u0081\u0155\3\2\2\2\u0083\u0157\3\2\2"+
		"\2\u0085\u0159\3\2\2\2\u0087\u015b\3\2\2\2\u0089\u015d\3\2\2\2\u008b\u015f"+
		"\3\2\2\2\u008d\u0161\3\2\2\2\u008f\u0163\3\2\2\2\u0091\u0166\3\2\2\2\u0093"+
		"\u016b\3\2\2\2\u0095\u0171\3\2\2\2\u0097\u017b\3\2\2\2\u0099\u0180\3\2"+
		"\2\2\u009b\u018c\3\2\2\2\u009d\u018e\3\2\2\2\u009f\u0191\3\2\2\2\u00a1"+
		"\u0198\3\2\2\2\u00a3\u01a2\3\2\2\2\u00a5\u00a6\t\2\2\2\u00a6\4\3\2\2\2"+
		"\u00a7\u00a8\t\3\2\2\u00a8\6\3\2\2\2\u00a9\u00aa\t\4\2\2\u00aa\b\3\2\2"+
		"\2\u00ab\u00ac\t\5\2\2\u00ac\n\3\2\2\2\u00ad\u00ae\t\6\2\2\u00ae\f\3\2"+
		"\2\2\u00af\u00b0\t\7\2\2\u00b0\16\3\2\2\2\u00b1\u00b2\t\b\2\2\u00b2\20"+
		"\3\2\2\2\u00b3\u00b4\t\t\2\2\u00b4\22\3\2\2\2\u00b5\u00b6\t\n\2\2\u00b6"+
		"\24\3\2\2\2\u00b7\u00b8\t\13\2\2\u00b8\26\3\2\2\2\u00b9\u00ba\t\f\2\2"+
		"\u00ba\30\3\2\2\2\u00bb\u00bc\t\r\2\2\u00bc\32\3\2\2\2\u00bd\u00be\t\16"+
		"\2\2\u00be\34\3\2\2\2\u00bf\u00c0\t\17\2\2\u00c0\36\3\2\2\2\u00c1\u00c2"+
		"\t\20\2\2\u00c2 \3\2\2\2\u00c3\u00c4\t\21\2\2\u00c4\"\3\2\2\2\u00c5\u00c6"+
		"\t\22\2\2\u00c6$\3\2\2\2\u00c7\u00c8\t\23\2\2\u00c8&\3\2\2\2\u00c9\u00ca"+
		"\t\24\2\2\u00ca(\3\2\2\2\u00cb\u00cc\t\25\2\2\u00cc*\3\2\2\2\u00cd\u00ce"+
		"\t\26\2\2\u00ce,\3\2\2\2\u00cf\u00d0\t\27\2\2\u00d0.\3\2\2\2\u00d1\u00d2"+
		"\t\30\2\2\u00d2\60\3\2\2\2\u00d3\u00d4\t\31\2\2\u00d4\62\3\2\2\2\u00d5"+
		"\u00d6\t\32\2\2\u00d6\64\3\2\2\2\u00d7\u00d8\t\33\2\2\u00d8\66\3\2\2\2"+
		"\u00d9\u00da\7$\2\2\u00da8\3\2\2\2\u00db\u00dc\7)\2\2\u00dc:\3\2\2\2\u00dd"+
		"\u00de\t\34\2\2\u00de<\3\2\2\2\u00df\u00e0\4\62;\2\u00e0>\3\2\2\2\u00e1"+
		"\u00e2\t\35\2\2\u00e2@\3\2\2\2\u00e3\u00e4\t\36\2\2\u00e4B\3\2\2\2\u00e5"+
		"\u00e6\5!\21\2\u00e6\u00e7\5%\23\2\u00e7\u00e8\5\37\20\2\u00e8\u00e9\5"+
		"\17\b\2\u00e9\u00ea\5%\23\2\u00ea\u00eb\5\3\2\2\u00eb\u00ec\5\33\16\2"+
		"\u00ecD\3\2\2\2\u00ed\u00ee\5\23\n\2\u00ee\u00ef\5\35\17\2\u00ef\u00f0"+
		"\5)\25\2\u00f0F\3\2\2\2\u00f1\u00f2\5\7\4\2\u00f2\u00f3\5\21\t\2\u00f3"+
		"\u00f4\5\3\2\2\u00f4\u00f5\5%\23\2\u00f5H\3\2\2\2\u00f6\u00f7\5\r\7\2"+
		"\u00f7\u00f8\5\31\r\2\u00f8\u00f9\5\37\20\2\u00f9\u00fa\5\3\2\2\u00fa"+
		"\u00fb\5)\25\2\u00fbJ\3\2\2\2\u00fc\u00fd\5\5\3\2\u00fd\u00fe\5\37\20"+
		"\2\u00fe\u00ff\5\37\20\2\u00ff\u0100\5\31\r\2\u0100L\3\2\2\2\u0101\u0102"+
		"\5\r\7\2\u0102\u0103\5+\26\2\u0103\u0104\5\35\17\2\u0104\u0105\5\7\4\2"+
		"\u0105N\3\2\2\2\u0106\u0107\5%\23\2\u0107\u0108\5\13\6\2\u0108\u0109\5"+
		")\25\2\u0109\u010a\5+\26\2\u010a\u010b\5%\23\2\u010b\u010c\5\35\17\2\u010c"+
		"P\3\2\2\2\u010d\u010e\5-\27\2\u010e\u010f\5\3\2\2\u010f\u0110\5%\23\2"+
		"\u0110R\3\2\2\2\u0111\u0112\5!\21\2\u0112\u0113\5%\23\2\u0113\u0114\5"+
		"\23\n\2\u0114\u0115\5\35\17\2\u0115\u0116\5)\25\2\u0116T\3\2\2\2\u0117"+
		"\u0118\5\23\n\2\u0118\u0119\5\r\7\2\u0119V\3\2\2\2\u011a\u011b\5\13\6"+
		"\2\u011b\u011c\5\31\r\2\u011c\u011d\5\'\24\2\u011d\u011e\5\13\6\2\u011e"+
		"X\3\2\2\2\u011f\u0120\5/\30\2\u0120\u0121\5\21\t\2\u0121\u0122\5\23\n"+
		"\2\u0122\u0123\5\31\r\2\u0123\u0124\5\13\6\2\u0124Z\3\2\2\2\u0125\u0126"+
		"\5\r\7\2\u0126\u0127\5\37\20\2\u0127\u0128\5%\23\2\u0128\\\3\2\2\2\u0129"+
		"\u012a\5\23\n\2\u012a\u012b\5\35\17\2\u012b^\3\2\2\2\u012c\u012d\7\60"+
		"\2\2\u012d\u012e\7\60\2\2\u012e\u012f\7\60\2\2\u012f`\3\2\2\2\u0130\u0131"+
		"\5\5\3\2\u0131\u0132\5\63\32\2\u0132b\3\2\2\2\u0133\u0134\7-\2\2\u0134"+
		"d\3\2\2\2\u0135\u0136\7/\2\2\u0136f\3\2\2\2\u0137\u0138\7,\2\2\u0138h"+
		"\3\2\2\2\u0139\u013a\7\61\2\2\u013aj\3\2\2\2\u013b\u013c\7?\2\2\u013c"+
		"l\3\2\2\2\u013d\u013e\7?\2\2\u013e\u013f\7?\2\2\u013fn\3\2\2\2\u0140\u0141"+
		"\7#\2\2\u0141p\3\2\2\2\u0142\u0143\7#\2\2\u0143\u0144\7?\2\2\u0144r\3"+
		"\2\2\2\u0145\u0146\7>\2\2\u0146t\3\2\2\2\u0147\u0148\7@\2\2\u0148v\3\2"+
		"\2\2\u0149\u014a\7(\2\2\u014a\u014b\7(\2\2\u014bx\3\2\2\2\u014c\u014d"+
		"\7~\2\2\u014d\u014e\7~\2\2\u014ez\3\2\2\2\u014f\u0150\7]\2\2\u0150|\3"+
		"\2\2\2\u0151\u0152\7_\2\2\u0152~\3\2\2\2\u0153\u0154\7*\2\2\u0154\u0080"+
		"\3\2\2\2\u0155\u0156\7+\2\2\u0156\u0082\3\2\2\2\u0157\u0158\7}\2\2\u0158"+
		"\u0084\3\2\2\2\u0159\u015a\7\177\2\2\u015a\u0086\3\2\2\2\u015b\u015c\7"+
		".\2\2\u015c\u0088\3\2\2\2\u015d\u015e\7<\2\2\u015e\u008a\3\2\2\2\u015f"+
		"\u0160\7\60\2\2\u0160\u008c\3\2\2\2\u0161\u0162\7<\2\2\u0162\u008e\3\2"+
		"\2\2\u0163\u0164\7/\2\2\u0164\u0165\7@\2\2\u0165\u0090\3\2\2\2\u0166\u0167"+
		"\5)\25\2\u0167\u0168\5%\23\2\u0168\u0169\5+\26\2\u0169\u016a\5\13\6\2"+
		"\u016a\u0092\3\2\2\2\u016b\u016c\5\r\7\2\u016c\u016d\5\3\2\2\u016d\u016e"+
		"\5\31\r\2\u016e\u016f\5\'\24\2\u016f\u0170\5\13\6\2\u0170\u0094\3\2\2"+
		"\2\u0171\u0175\5\67\34\2\u0172\u0174\13\2\2\2\u0173\u0172\3\2\2\2\u0174"+
		"\u0177\3\2\2\2\u0175\u0176\3\2\2\2\u0175\u0173\3\2\2\2\u0176\u0178\3\2"+
		"\2\2\u0177\u0175\3\2\2\2\u0178\u0179\5\67\34\2\u0179\u0096\3\2\2\2\u017a"+
		"\u017c\5=\37\2\u017b\u017a\3\2\2\2\u017c\u017d\3\2\2\2\u017d\u017b\3\2"+
		"\2\2\u017d\u017e\3\2\2\2\u017e\u0098\3\2\2\2\u017f\u0181\5=\37\2\u0180"+
		"\u017f\3\2\2\2\u0181\u0182\3\2\2\2\u0182\u0180\3\2\2\2\u0182\u0183\3\2"+
		"\2\2\u0183\u0184\3\2\2\2\u0184\u0186\5\u008bF\2\u0185\u0187\5=\37\2\u0186"+
		"\u0185\3\2\2\2\u0187\u0188\3\2\2\2\u0188\u0186\3\2\2\2\u0188\u0189\3\2"+
		"\2\2\u0189\u009a\3\2\2\2\u018a\u018d\5\u0091I\2\u018b\u018d\5\u0093J\2"+
		"\u018c\u018a\3\2\2\2\u018c\u018b\3\2\2\2\u018d\u009c\3\2\2\2\u018e\u018f"+
		"\59\35\2\u018f\u0190\59\35\2\u0190\u009e\3\2\2\2\u0191\u0195\t\37\2\2"+
		"\u0192\u0194\t \2\2\u0193\u0192\3\2\2\2\u0194\u0197\3\2\2\2\u0195\u0193"+
		"\3\2\2\2\u0195\u0196\3\2\2\2\u0196\u00a0\3\2\2\2\u0197\u0195\3\2\2\2\u0198"+
		"\u019c\t!\2\2\u0199\u019b\13\2\2\2\u019a\u0199\3\2\2\2\u019b\u019e\3\2"+
		"\2\2\u019c\u019d\3\2\2\2\u019c\u019a\3\2\2\2\u019d\u019f\3\2\2\2\u019e"+
		"\u019c\3\2\2\2\u019f\u01a0\t\"\2\2\u01a0\u00a2\3\2\2\2\u01a1\u01a3\t#"+
		"\2\2\u01a2\u01a1\3\2\2\2\u01a3\u01a4\3\2\2\2\u01a4\u01a2\3\2\2\2\u01a4"+
		"\u01a5\3\2\2\2\u01a5\u01a6\3\2\2\2\u01a6\u01a7\bR\2\2\u01a7\u00a4\3\2"+
		"\2\2\13\2\u0175\u017d\u0182\u0188\u018c\u0195\u019c\u01a4\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}