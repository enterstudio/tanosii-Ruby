# coding: utf-8

p(/ABC/ =~ "ABC")
p(/ABC/ =~ "ABCDEF")
p(/ABC/ =~ "123ABC")
p(/ABC/ =~ "A1B2C3")
p(/ABC/ =~ "AB")
p(/ABC/ =~ "abc")

print "-----\n"

p(/^ABC$/ =~"ABC")
p(/^ABC$/ =~"ABCDEF")
p(/^ABC$/ =~"123ABC")
p(/^ABC/ =~ "ABC")
p(/^ABC/ =~ "ABCDEF")
p(/^ABC/ =~ "123ABC")
p(/ABC$/ =~ "ABC")
p(/ABC$/ =~ "ABCDEF")
p(/ABC$/ =~ "123ABC")

print "----\n"
p(/\AABC/ =~ "012\nABC") # \Aで文字列の先頭
p(/\AABC/ =~ "ABC\n012")
p(/^ABC/ =~ "012\nABC")

p("abc\n".gsub(/\z/, "!"))
p("abc\n".gsub(/\Z/, "!"))

print "-----\n"
p(/[ABC]/ =~ "B")
p(/[ABC]/ =~ "BCD")
p(/[ABC]/ =~ "123")
p(/a[ABC]c/ =~ "aBc")
p(/a[ABC]c/ =~ "1aBcDe")
p(/a[ABC]c/ =~ "abc")
p(/[^ABC]/ =~ "1")
p(/[^ABC]/ =~ "A")
p(/a[^A-B]c/ =~ "aBcabc")

p(/[ABC][AB]/ =~ "AB")
p(/[ABC][AB]/ =~ "AA")
p(/[ABC][AB]/ =~ "CA")
p(/[ABC][AB]/ =~ "CCCCA")
p(/[ABC][AB]/ =~ "xCBx")
p(/[ABC][AB]/ =~ "CC")
p(/[ABC][AB]/ =~ "CxAx")
p(/[ABC][AB]/ =~ "C")
p(/[0-9][A-Z]/ =~ "0A")
p(/[0-9][A-Z]/ =~ "000AAA")
p(/[^A-Z][A-Z]/ =~ "1A2B3C")
p(/[^0-9][^A-Z]/ =~ "1A2B3C")

print "-----\n"
p(/A.C/ =~ "ABC")
p(/A.C/ =~ "AxC")
p(/A.C/ =~ "012A3C456")
p(/A.C/ =~ "AC")
p(/A.C/ =~ "ABBC")
p(/A.C/ =~ "abc")
p(/aaa.../ =~ "00aaabcde")
p(/aaa.../ =~ "aaabb")

print "-----\n"
p(/ABC\sDEF/ =~ "ABC DEF")
p(/ABC\sDEF/ =~ "ABC\tDEF")
p(/ABC\sDEF/ =~ "ABCDEF")

print "-----\n"
p(/\d\d\d-\d\d\d\d/ =~ "012-3456")
p(/\d\d\d-\d\d\d\d/ =~ "01234-012345")
p(/\d\d\d-\d\d\d\d/ =~ "ABC-DEFG")
p(/\d\d\d-\d\d\d\d/ =~ "012-21")

print "-----\n"
p(/\w\w\w/ =~ "ABC")
p(/\w\w\w/ =~ "abc")
p(/\w\w\w/ =~ "012")
p(/\w\w\w/ =~ "AB C")
p(/\w\w\w/ =~ "AB\nC")

print "-----\n"
p(/\AABC/ =~ "ABC")
p(/\AABC/ =~ "ABCDEF")
p(/\AABC/ =~ "012ABC")
p(/\AABC/ =~ "012\nABC")

print "-----\n"
p(/ABC\z/ =~ "ABC")
p(/ABC\z/ =~ "012ABC")
p(/ABC\z/ =~ "ABCDEF")
p(/ABC\z/ =~ "012\nABC")
p(/ABC\z/ =~ "ABC\nDEF")

print "-----\n"
p(/ABC\[/ =~ "ABC[")
p(/\^ABC/ =~ "ABC")
p(/\^ABC/ =~ "012^ABC")

print "-----\n"
p(/A*/ =~ "A")
p(/A*/ =~ "AAAAAA")
p(/A*/ =~ "")
p(/A*/ =~ "BBB")
p(/A*C/ =~ "AAAAC")
p(/A*C/ =~ "BC")
p(/A*C/ =~ "AAAAB")
p(/AAA*C/ =~ "AAC")
p(/AAA*C/ =~ "AC")
p(/A.*C/ =~ "AB012C")
p(/A.*C/ =~ "AB  CD")
p(/A.*C/ =~ "ACDE")

print "-----\n"
p(/^Subject:\s*.*$/ =~ "Subject:   foo")
p(/^Subject:\s*.*$/ =~ "Subject: Re:  foo")
p(/^Subject:\s*.*$/ =~ "Subject: Re^2:  foo")
p(/^Subject:\s*.*$/ =~ "in Subject: Re:  foo")

print "-----\n"
p(/A+/ =~ "A")
p(/A+/ =~ "AAAAAA")
p(/A+/ =~ "")
p(/A+/ =~ "BBB")
p(/A+C/ =~ "AAAC")
p(/A+C/ =~ "BC")
p(/A+C/ =~ "AAAB")
p(/AAA+C/ =~ "AC")
p(/A.+C/ =~ "AB012C")
p(/A.+C/ =~ "AB  CD")
p(/A.+C/ =~ "ACDE")

print "-----\n"
p(/^A?$/ =~ "A")
p(/^A?$/ =~ "")
p(/^A?$/ =~ "AAAAAA")
p(/^A?C/ =~ "AC")
p(/^A?C/ =~ "AAAC")
p(/^A?C/ =~ "BC")
p(/^A?C/ =~ "C")
p(/AAA?C/ =~ "AAAC")
p(/AAA?C/ =~ "AAC")
p(/AAA?C/ =~ "AC")
p(/A.?C/ =~ "ACDE")
p(/A.?C/ =~ "ABCDE")
p(/A.?C/ =~ "AB012C")
p(/A.?C/ =~ "AB  CD")

print "-----\n"
p(/A.*B/ =~ "ABCDABCDABCD")
p(/A.*C/ =~ "ABCDABCDABCD")
p(/A.*?B/ =~ "ABCDABCDABCD")
p(/A.*?B/ =~ "ABAB")
p(/A.*?C/ =~ "ABCDABCDABCD")
p(/A.+B/ =~ "ABCDABCDABCD")
p(/A.+C/ =~ "ABCDABCDABCD")
p(/A.+?B/ =~ "ABCDABCDABCD")
p(/A.+?C/ =~ "ABCDABCDABCD")

print "-----\n"
p(/^(ABC)*$/ =~ "ABC")
p(/^(ABC)*$/ =~ "")
p(/^(ABC)*$/ =~ "ABCABC")
p(/^(ABC)*$/ =~ "ABCABCAB")
p(/^(ABC)+$/ =~ "ABC")
p(/^(ABC)+$/ =~ "")
p(/^(ABC)+$/ =~ "ABCABC")
p(/^(ABC)+$/ =~ "ABCABCAB")
p(/^(ABC)?$/ =~ "ABC")
p(/^(ABC)?$/ =~ "")
p(/^(ABC)?$/ =~ "ABCABC")
p(/^(ABC)?$/ =~ "ABCABCAB")

print "-----\n"
p(/^(ABC|DEF)$/ =~ "ABC")
p(/^(ABC|DEF)$/ =~ "DEF")
p(/^(ABC|DEF)$/ =~ "AB")
p(/^(ABC|DEF)$/ =~ "ABCDEF")
p(/^(AB|CD)+$/ =~ "ABCD") # +があるから１回以上の繰り返し
p(/^(AB|CD)+$/ =~ "")
p(/^(AB|CD)+$/ =~ "ABCABC")
p(/^(AB|CD)+$/ =~ "ABCABCAB")

# 14.3
print "-----\n"
re1 = Regexp.new("abc*def")
re2 = Regexp.new(Regexp.quote("abc*def"))
p(re1 =~ "abc*def")
p(re2 =~ "abc*def")

# 14.4
print "----\n"
str = "ABC\nDEF\nGHI"
p(/DEF.GHI/ =~ str)
p(/DEF.GHI/m =~ str)

# 14.5
print "-----\n"
/(.)(.)(.)/ =~ "abc"
first = $1
second = $2
third = $3
p first
p second
p third

p(/.../ =~ "abc") # 一致はするが、()で囲まれていないのでキャプチャされない
first = $1
second = $2
third = $3
p first
p second
p third

p(/(.)(\d\d)+(.)/ =~ "123456")
p $1
p $2
p $3

p(/(.)(\d\d)(\d\d)(.)/ =~ "123456")
p $1
p $2
p $3
p $4

/(.)(?:\d\d)+(.)/ =~ "123456"
p $1
p $2
p $3

/C./ =~ "ABCDEF"
p $`
p $&
p $'

# 14.6
print "-----\n"
str = "abc   def   g      hi"
p str.sub(/\s+/, ' ')
p str.gsub(/\s+/, ' ')

str = "abracatabra"
nstr = str.sub(/.a/) do |matched|
  '<'+matched.upcase+'>'
end
p nstr

str = "abracatabra"
nastr = str.gsub(/.a/) do |matched|
  '<'+matched.upcase+'>'
end
p nastr
