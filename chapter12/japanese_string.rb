# coding: euc-jp
require "nkf"
# require "iconv"

# ファイルのエンコードをeuc-jpに変更しました

euc_str = "日本語EUCの文字列"
utf8_str = NKF.nkf("-E -w -xm0", euc_str)
p utf8_str
p utf8_str.encoding

#result = ""
#cd = Iconv.open("UTF-8", "EUC-JP")
#result << cd.iconv("あ")
#result << cd.iconv("い")
#result << cd.iconv("う")
#cd.close


# Ruby 1.9からはnkf,icnonvを使わずにencodeメソッドを使用しましょう

euc_str = "日本語EUCの文字列"
utf8_str = euc_str.encode("utf-8")
p utf8_str
p utf8_str.encoding

euc_str = "日本語EUCの文字列"
euc_str.encode!("utf-8")
p euc_str
p euc_str.encoding

p Encoding.name_list
