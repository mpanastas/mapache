// Generated from Mapache.g4 by ANTLR 4.7.1
import Antlr4

open class MapacheLexer: Lexer {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = MapacheLexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(MapacheLexer._ATN.getDecisionState(i)!, i))
          }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	static let T__0=1, T__1=2, MAPACHE=3, INT=4, CHAR=5, FLOAT=6, BOOL=7, VOID=8, 
            FUNC=9, RETURN=10, VAR=11, PRINT=12, IF=13, ELSE=14, WHILE=15, 
            FOR=16, IN=17, DOTS=18, BY=19, PLUS=20, MINUS=21, MULTIPLY=22, 
            DIVISION=23, ASSIGN=24, EQUAL=25, NOT=26, NOT_EQUAL=27, LESS_THAN=28, 
            GREATER_THAN=29, AND=30, OR=31, OPEN_BRACKET=32, CLOSE_BRACKET=33, 
            OPEN_PAREN=34, CLOSE_PAREN=35, OPEN_CURLY=36, CLOSE_CURLY=37, 
            COMMA=38, COLON=39, DOT=40, SEMICOLON=41, ARROW=42, TRUE=43, 
            FALSE=44, TEXT=45, CONST_I=46, CONST_F=47, CONST_C=48, ID=49, 
            WS=50

	public
	static let channelNames: [String] = [
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	]

	public
	static let modeNames: [String] = [
		"DEFAULT_MODE"
	]

	public
	static let ruleNames: [String] = [
		"T__0", "T__1", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", 
		"L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", 
		"Z", "QUOTE", "APOS", "DIGIT", "LOWERCASE", "UPPERCASE", "MAPACHE", "INT", 
		"CHAR", "FLOAT", "BOOL", "VOID", "FUNC", "RETURN", "VAR", "PRINT", "IF", 
		"ELSE", "WHILE", "FOR", "IN", "DOTS", "BY", "PLUS", "MINUS", "MULTIPLY", 
		"DIVISION", "ASSIGN", "EQUAL", "NOT", "NOT_EQUAL", "LESS_THAN", "GREATER_THAN", 
		"AND", "OR", "OPEN_BRACKET", "CLOSE_BRACKET", "OPEN_PAREN", "CLOSE_PAREN", 
		"OPEN_CURLY", "CLOSE_CURLY", "COMMA", "COLON", "DOT", "SEMICOLON", "ARROW", 
		"TRUE", "FALSE", "TEXT", "CONST_I", "CONST_F", "CONST_C", "ID", "WS"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'true'", "'false'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, nil, nil, "MAPACHE", "INT", "CHAR", "FLOAT", "BOOL", "VOID", "FUNC", 
		"RETURN", "VAR", "PRINT", "IF", "ELSE", "WHILE", "FOR", "IN", "DOTS", 
		"BY", "PLUS", "MINUS", "MULTIPLY", "DIVISION", "ASSIGN", "EQUAL", "NOT", 
		"NOT_EQUAL", "LESS_THAN", "GREATER_THAN", "AND", "OR", "OPEN_BRACKET", 
		"CLOSE_BRACKET", "OPEN_PAREN", "CLOSE_PAREN", "OPEN_CURLY", "CLOSE_CURLY", 
		"COMMA", "COLON", "DOT", "SEMICOLON", "ARROW", "TRUE", "FALSE", "TEXT", 
		"CONST_I", "CONST_F", "CONST_C", "ID", "WS"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)


	override open
	func getVocabulary() -> Vocabulary {
		return MapacheLexer.VOCABULARY
	}

	public
	required init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.7.1", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, MapacheLexer._ATN, MapacheLexer._decisionToDFA, MapacheLexer._sharedContextCache)
	}

	override open
	func getGrammarFileName() -> String { return "Mapache.g4" }

	override open
	func getRuleNames() -> [String] { return MapacheLexer.ruleNames }

	override open
	func getSerializedATN() -> String { return MapacheLexer._serializedATN }

	override open
	func getChannelNames() -> [String] { return MapacheLexer.channelNames }

	override open
	func getModeNames() -> [String] { return MapacheLexer.modeNames }

	override open
	func getATN() -> ATN { return MapacheLexer._ATN }


	public
	static let _serializedATN: String = MapacheLexerATN().jsonString

	public
	static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}