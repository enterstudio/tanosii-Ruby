#encoding:utf-8

# 11.2
nums = [1, 2, 3, 4, 5]
strs = ["a", "b", "c", "d"]

# 11.2.1
a = Array.new
p a
a = Array.new(5)
p a
a = Array.new(5, 0)
p a

# 11.2.2
lang = %w(Ruby Perl Pyton Scheme Pike REBOL)
p lang

iroha = %w(い ろ は に ほ へ と)
p iroha

# 囲む文字は「()」でなくてもよい
# 「<>」、「||」、「!!」、「@@」などでもよい
# 奇抜なので使わない方が良い
# ※「AA」も書いてあっったけど上手くいかない
hoge = %w<h o g e>
p hoge
hoge = %w|h o g e|
p hoge
hoge = %w!h o g e!
p hoge
hoge = %w@h o g e@
p hoge
#hoge = %wAh o g eA
#p hoge

# 11.2.3
# オブジェクトを配列に変換
color_table = {"black"=>"#000000", "white"=>"#FFFFFF"}
p color_table.to_a

# 11.2.4
# splitのデフォルトの区切り文字は半角スペース
column = "2010/01/09 22:33 foo.html proxy.example.jp".split()
p column

column = "2010/01/09,22:33,foo.html,proxy.example.jp".split(',')
p column
