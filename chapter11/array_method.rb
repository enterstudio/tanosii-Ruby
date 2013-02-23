# 11.7

# 11.7.1
# unshift 先頭に要素追加
a = [1, 2, 3, 4, 5]
a.unshift(0)
p a

# <<, push 末尾に要素追加
a = [1, 2, 3, 4, 5]
a << 6
p a
a = [1, 2, 3, 4, 5]
a.push(6)
p a

# concat, + 配列を結合する
a = [1, 2, 3, 4, 5]
a.concat([8, 9]) # 破壊的メソッド
p a
a = [1, 2, 3, 4, 5]
p a + [8, 9] # 元の配列はそのままで新しい配列を返す

# a[n] = item
# a[n..m] = item
# a[n, len] = item
# 指定された要素をitemに置き換える
a = [1, 2, 3, 4, 5]
a[1, 3] = 0
p a

# 11.7.2
# 配列のnil要素削除
# a.compact 新しい配列を作成する
# a.compact! 元の配列を置き換える
a = [1, nil, 3, nil, nil]
p a.compact!  # 削除する要素が存在した場合は、削除した配列を返す
p a           # 元の配列は変更される
a = [1, 2, 3, 4, 5]
p a.compact!  # 削除する要素が存在しなかった場合は、nilを返す

a = [1, nil, 3, nil, nil]
p a.compact # 新しい配列を作成する
p a # 元の配列は変更されない

# 配列から要素xを削除
# a.delete(x)
a = [1, 2, 3, 4, 5]
a.delete(2)
p a

# 配列a[n]の要素を削除
# a.delete_at(n)
a = [1, 2, 3, 4, 5]
a.delete_at(2)
p a

# 条件が真になる要素を削除
# a.delete_if
# a.reject
# a.reject!
a = [1, 2, 3, 4, 5]
a.delete_if{|i| i > 3}
p a

a = [1, 2, 3, 4, 5]
p a.reject{|i| i > 3}

a = [1, 2, 3, 4, 5]
a.reject!{|i| i > 3}
p a

# 指定された部分を取り除き、取り除いた値を返す
# a.slice!(n)
# a.slice!(n..m)
# a.slice!(n, len)
a = [1, 2, 3, 4, 5]
p a.slice!(1, 2)
p a

# 重複要素を削除する
# a.uniq
# a.uniq!
a = [1, 2, 3, 4, 3, 2, 1]
a.uniq!
p a

# 先頭要素を取り除き、取り除いた値を返す
a = [1, 2, 3, 4, 5]
p a.shift
p a

# 末尾要素を取り除き、取り除いた値を返す
a = [1, 2, 3, 4, 5]
p a.pop
p a

# 11.7.3
# 配列の全要素を置き換える
# 各要素に対してブロックを適用する
# collect, map
a = [1, 2, 3, 4, 5]
a.collect! {|item| item * 2}
p a
a = [1, 2, 3, 4, 5]
p a.collect {|item| item * 2}

# 配列の要素を指定要素に置き換える
p [1, 2, 3, 4, 5].fill(0)       # 全ての要素
p [1, 2, 3, 4, 5].fill(0, 2)    # [2]から最後まで
p [1, 2, 3, 4, 5].fill(0, 2, 2) # [2]から２つ
p [1, 2, 3, 4, 5].fill(0, 2..4) # [2]から[4]

# 配列を平坦化する
# 平坦化->配列の入れ子を展開して１つの配列にする
a = [1, [2, [3]], [4], 5]
a.flatten!
p a

# 配列を逆順に並べ替える
a = [1, 2, 3, 4, 5]
a.reverse!
p a

# 配列を並べ替える
a = [2, 4, 3, 5, 1]
a.sort!
p a

# 配列を並べ替える
# プロックを評価した結果をソートした順に行われる
a = [2, 4, 3, 5, 1]
p a.sort_by{|i| -i }
