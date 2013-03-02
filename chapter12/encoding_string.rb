# encoding: euc-jp

a = "\u3042\u3044"
puts a
p a.encoding

a.encode!("euc-jp")
p a.encoding
