# 10.4

p 10.to_f
p 10.8.to_i
p -10.8.to_i
p "123".to_i
p "12.3".to_f

# 四捨五入する場合
p 1.2.round
p 1.8.round
p -1.2.round
p -1.8.round

# ceil レシーバより大きくて最も小さい整数を返す
# floor レシーバより小さくて最も大きい整数を返す
p 1.5.ceil
p -1.5.ceil
p 1.5.floor
p -1.5.floor

# 数値をRationalオブジェクト（分数）
# 数値をComplexオブジェクト（複素数）
p 1.5.to_r
p Rational(1,2).to_f
p 1.5.to_c
