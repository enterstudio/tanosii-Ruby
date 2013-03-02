# coding:utf-8
# 12.8

str = "sumomomomomomomomonouchi"
p str.index("momo")
p str.rindex("momo")

# 単純に含まれるかどうか調べたいだけの場合
p str.include?("momo")

# Ruby 1.9の場合は文字単位
str = "すもももももものうち"
p str.index("もも")
p str.rindex("もも")
