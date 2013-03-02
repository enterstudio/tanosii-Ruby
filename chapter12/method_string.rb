# coding:utf-8
# 12.9

str = "abcde"
str[2, 1] = "C"
p str

str = "Hello, Ruby"
p str.slice!(-1)
p str.slice!(5..6)
p str.slice!(0, 5)
p str

str = "あ\nい\nう\n"
tmp = str.each_line.collect do |line|
  line.chomp * 3
end
p tmp

str = "abcde"
tmp = str.each_byte.collect do |byte|
  -byte
end
p tmp

s = "abc"
s.concat("def")
p s

s = "abcabc"
p s.delete("b")

s = "abcdefg"
p s.reverse

p "  aaa  bbb  ccc  ".strip

p "Object-Oriented Language".upcase

p "Object-Oriented Language".downcase

p "Object-Oriented Language".swapcase

p "Object-Oriented Language".capitalize

p "abcdefg".tr("b", "B")
p "abcdefg".tr("bc", "BC")
p "abcdefg".tr("b-e", "B-E")
p "abcdefg".tr("bcd", "BCD")

