# 11.6

# キュー
alpha = ["a", "b", "c", "d", "e"]
p alpha.push("f")
p alpha.shift
p alpha

# スタック
alpha = ["a", "b", "c", "d", "e"]
p alpha.push("f")
p alpha.pop
p alpha

# shift, popは配列から要素を削除する
# first, lastは要素を参照するだけ
a = [1, 2, 3, 4, 5]
p a.first
p a.last
p a
