# encoding: utf-8
module Edition
  def edition(n)
    "#{self} 第#{n}版"
  end
end

str = "たのしいRuby"
str.extend(Edition) # モジュールをオブジェクトにMix-inする
str2 = "hoge"

p str.edition(3)
p str2.edition(4) # 定義されていないのでエラー
