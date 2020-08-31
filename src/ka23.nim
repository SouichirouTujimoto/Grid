import  ka2parser, ka2cpp, ka2rw
import strutils

var cppCode = """
#include "ka2lib/ka2calc.h"
#include "ka2lib/ka2IO.h"

int main() {
"""

when isMainModule:
  echo "ファイル名を入力してください"
  let sourceName = readLine(stdin)
  let input = sourceName.readSource()
  let program = makeAST(input)

  for tree in program:
    cppCode.add(makeCppCode(tree, 0))
  cppCode.add("\n}")

  let cppFileName = sourceName.split(".")[0] & ".cpp"
  writeCpp(cppFileName, cppCode)
#[
  TODO
  ・ 意味解析
    ・ 変数の名前と型を記憶するテーブルを作る ✅
  ・ エラーが出たらコンパイルを止める ✅
  ・ ちゃんとテストができるように修正する ✅
  ・ 変数をイミュータブルに ✅
  ・ ミュータブルな変数も作る  ✅
  ・ 代入式を作る ✅
  ・ イミュータブルな変数に値を代入できないようにする
  ・ for文とかmap関数的なのを作る
  ・ 演算子、代入式をINT以外の型にも対応させる
  ・ 構文エラーを検出できるようにする
  ・ エラーメッセージをちゃんと作る
  ・ てきとうすぎる変数名、関数名をどうにかする
  ・ 「仮」「後で修正」「後で変更する」とかいろいろ書いてるところを修正していく
  ・ コメントを実装
  ・ 配列実装
  ・ ka23の関数名がc++の関数と競合しないようにする
]#