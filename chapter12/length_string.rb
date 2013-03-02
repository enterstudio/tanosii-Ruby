# encoding:utf-8

# 12.2
p "just another ruby hacker,".length
p "just another ruby hacker,".size
p 'オブジェクト指向プログラミング言語'.length

# バイト数を取得
p 'オブジェクト指向プログラミング言語'.bytesize

# 正規表現を使用した場合
p 'オブジェクト指向プログラミング言語'.split(//u).length
# 文字コードが違うのでエラー
p 'オブジェクト指向プログラミング言語'.split(//s).length
