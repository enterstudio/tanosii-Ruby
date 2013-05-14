# encoding: utf-8
str = "たのしいRuby"
str2 = "hoge"
class << str
  def edition(n)
    "#{self} 第#{n}版"
  end
end

p str.edition(3)
p str2.edition(4) # 定義されていないのでエラー
