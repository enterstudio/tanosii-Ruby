# encoding: utf-8

# 1.4
x = 10
y = 20
z = 30
area = (x*y + y*z + z*x) * 2
volume = x * y * z
print "表面積=", area, "\n"
print "体積=", volume, "\n"

print "表面積=", (10*20 + 20*30 + 30*10) *2, "\n"
print "体積=", 10*20*30, "\n"

=begin
「たのしいRuby 第３版」サンプル
コメントの使い方の例
　2006/06/16 作成
　2006/07/01 一部コメントを追加
　2009/11/01 第３版用に更新
=end
x = 10 # 横
y = 20 # 縦
z = 30 # 高さ

# 表面積と体積を計算する
area = (x*y + y*z + z*x) * 2
volume = x * y * z

# 出力する
print "表面積=", area, "\n"
print "体積=", volume, "\n"
