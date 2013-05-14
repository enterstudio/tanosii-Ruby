# encoding: utf-8
str = "たのしいRuby"
str2 = "hoge"
def str.edition(n)
  "#{self} 第#{n}版"
end

p str.edition(3)
p str2.edition(4) # 定義されていないのでエラー
