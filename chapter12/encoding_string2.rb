# encoding : utf-8

a = "あいうえお"
p a.encoding
#b = "あいうえお".encode("euc-jp")
b = "あいうえお".encode("utf-8")
p b.encoding
c = a + b

# 文字コードが異なる文字列の比較
p "あ" == "あ".encode("Shift_JIS")
p "あ" == "あ".force_encoding("Shift_JIS")
p "あ".encode("Shift_JIS").encoding
p "あ".encode("Shift_JIS").bytesize
p "あ".force_encoding("Shift_JIS").encoding
p "あ".force_encoding("Shift_JIS").bytesize # 変更されたのはエンコーディングのみで、
                                            #バイトサイズは変更されていない

p "ABC" == "ABC".force_encoding("Shift_JIS")
