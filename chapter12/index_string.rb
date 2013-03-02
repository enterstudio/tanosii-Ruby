# encoding: utf-8

# 12.5

# Ruby 1.9の文字列は文字をあつかえる
# （Ruby 1.8は文字列はバイト列を表現する）
str = "abcdef"
p str[0]
p str[0].chr
p str[2]
p str[2].chr
p str[-1]
p str[-1].chr
p str[-4]
p str[-4].chr

str = "新しいStrngクラス"
p str[0]
p str[3]
p str[9]
p str[2, 8]
p str[4]
p str[4].ord
p str[0].ord

