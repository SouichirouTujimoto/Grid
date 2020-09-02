import tables

type Token* = ref object of RootObj
  Type*: string
  Literal*: string

const
  ILLEGAL*      = "ILLEGAL"
  EOF*          = "EOF"
  # リテラル
  IDENT*        = "IDENT"
  INT*          = "INT"
  FLOAT*        = "FLOAT"
  CHAR*         = "CHAR"
  STRING*       = "STRING"
  BOOL*         = "BOOL"
  CPPCODE*      = "CPPCODE"
  ARRAY*        = "ARRAY"
  ELEMENT*      = "ELEMENT"
  # 演算子
  EQUAL*        = "="
  CEQUAL*       = ":="
  PLUS*         = "+"
  MINUS*        = "-"
  ASTERISC*     = "*"
  SLASH*        = "/"
  # 比較演算子
  LT*           = "<"
  GT*           = ">"
  LE*           = "<="
  GE*           = ">="
  EE*           = "=="
  NE*           = "!="
  NOT*          = "!"
  PIPE*         = "|>"
  # デリミタ
  COMMA*        = ","
  COLON*        = ":"
  SEMICOLON*    = ";"
  # 括弧
  LPAREN*       = "("
  RPAREN*       = ")"
  LBRACE*       = "{"
  RBRACE*       = "}"
  VARLEN*       = "!{"
  # キーワード
  TRUE*         = "TRUE"
  FALSE*        = "FALSE"
  NIL*          = "NIL"
  LET*          = "LET"
  MUT*          = "MUT"
  DEFINE*       = "DEFINE"
  RETURN*       = "RETURN"
  IF*           = "IF"
  ELIF*         = "ELIF"
  ELSE*         = "ELSE"
  DO*           = "DO"
  END*          = "END"
  # 型
  T_INT*        = "T_INT"
  T_FLOAT*      = "T_FLOAT"
  T_CHAR*       = "T_CHAR"
  T_STRING*     = "T_STRING"
  T_BOOL*       = "T_BOOL"
  T_FUNCTION*   = "T_FUNCTION"
  # その他
  AUTO*         = "AUTO"
  FUNCTION*     = "FUNCTION"
  OTHER*        = "OTHER"

let keywords = {
  "True"      : TRUE,
  "False"     : FALSE,
  "Nil"       : NIL,
  "let"       : LET,
  "mut"       : MUT,
  "def"       : DEFINE,
  "return"    : RETURN,
  "if"        : IF,
  "elif"      : ELIF,
  "else"      : ELSE,
  "do"        : DO,
  "end"       : END,
  "#int"      : T_INT,
  "#float"    : T_FLOAT,
  "#char"     : T_CHAR,
  "#string"   : T_STRING,
  "#bool"     : T_BOOL,
  "#function" : T_FUNCTION, 
}.newTable

proc LookupIdent*(ident: string): string =
  if keywords.hasKey(ident):
    return keywords[ident]
  return IDENT
