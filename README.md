# Grid

[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)
[![SecHack365](https://img.shields.io/badge/SecHack365-2020-ffd700.svg)](https://sechack365.nict.go.jp/)

静的型付けでAltC++な言語です。

# サンプルコード

(後で追加)

# 実行環境

macOS Catalina バージョン10.15.7で開発しました。macOS上なら動作すると思います。

# 使い方

## 実行方法
生成するC++ファイルと同じディレクトリにgridfuncs.cppがない場合、実行時に生成されます。
```
$ ./bin/grid
  # -> ソースファイル名を入力 -> C++ファイルを生成

$ ./bin/grid [ソースファイル名]
  # -> C++ファイルを生成

$ ./bin/grid [ソースファイル名] [コンパイルオプション]
  # -> C++ファイルを生成
```

生成されたC++はGCC 10.1以降またはClang 11.0以降でコンパイルすることを推奨します。
gridfuncs.cppが同じディレクトリに存在しないとコンパイルできません
```
$ g++ [生成されたC++ファイル名] -std=c++20

$ clang++ [生成されたC++ファイル名] -std=c++20
```

## コンパイルオプション
| オプション | 動作 |
|:-----------|:------------|
| -o [ファイルパス] | 出力先を指定 |
| -ast | 実行時に生成されたASTを画面に出力 |

# ドキュメント

(後で追加)