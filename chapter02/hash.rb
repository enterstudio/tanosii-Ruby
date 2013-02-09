# 2.2
sym = :foo
sym2 = :"foo"
p sym
p sym2

str = sym.to_s
p str

sym2 = str.intern
p sym2

font_table = {:normal => "+0", :small => "-1", :big => "+1"}
p font_table

puts font_table[:small]
puts font_table[:normal]
puts font_table[:big]
font_table[:verybig] = "+2"
puts font_table[:verybig]

# 上書き
font_table[:normal] = "000"
puts font_table[:normal]

