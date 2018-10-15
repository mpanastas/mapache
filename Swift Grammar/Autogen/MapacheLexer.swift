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
	static let MAPACHE=1, INT=2, CHAR=3, FLOAT=4, BOOL=5, VOID=6, FUNC=7, RETURN=8, 
            VAR=9, PRINT=10, IF=11, ELSE=12, WHILE=13, FOR=14, IN=15, DOTS=16, 
            BY=17, PLUS=18, MINUS=19, MULTIPLY=20, DIVISION=21, ASSIGN=22, 
            EQUAL=23, NOT=24, NOT_EQUAL=25, LESS_THAN=26, GREATER_THAN=27, 
            AND=28, OR=29, OPEN_BRACKET=30, CLOSE_BRACKET=31, OPEN_PAREN=32, 
            CLOSE_PAREN=33, OPEN_CURLY=34, CLOSE_CURLY=35, COMMA=36, COLON=37, 
            DOT=38, SEMICOLON=39, ARROW=40, TRUE=41, FALSE=42, TEXT=43, 
            CONST_I=44, CONST_F=45, CONST_B=46, CONST_C=47, ID=48, WS=49

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
		"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", 
		"O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "QUOTE", "APOS", 
		"DIGIT", "LOWERCASE", "UPPERCASE", "MAPACHE", "INT", "CHAR", "FLOAT", 
		"BOOL", "VOID", "FUNC", "RETURN", "VAR", "PRINT", "IF", "ELSE", "WHILE", 
		"FOR", "IN", "DOTS", "BY", "PLUS", "MINUS", "MULTIPLY", "DIVISION", "ASSIGN", 
		"EQUAL", "NOT", "NOT_EQUAL", "LESS_THAN", "GREATER_THAN", "AND", "OR", 
		"OPEN_BRACKET", "CLOSE_BRACKET", "OPEN_PAREN", "CLOSE_PAREN", "OPEN_CURLY", 
		"CLOSE_CURLY", "COMMA", "COLON", "DOT", "SEMICOLON", "ARROW", "TRUE", 
		"FALSE", "TEXT", "CONST_I", "CONST_F", "CONST_B", "CONST_C", "ID", "WS"
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