# 11.5

ary1 = ["a", "b", "c"]
ary2 = ["b", "c", "d"]
p ary1 & ary2 # 共通集合
p ary1 | ary2 # 和集合

ary1 = ["a", "b", "c"]
ary2 = ["b", "c", "d"]
p ary1 - ary2 # 差集合

# 11.5.1
# 配列の結合
num = [1, 2, 3]
even = [2, 4, 6]
p num + even # 共通の要素関係なし
p num | even # 共通の要素は１つ
