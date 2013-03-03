# 13.2

h1 = {"a" => "b", "c" => "d"}
p h1["a"]
p h1

h2 = {a: "b", c: "d"}
p h2

h1 = Hash.new
h2 = Hash.new("")
p h1["not_key"]
p h2["not_key"]

# 13.3 値の取り出し、設定
h = Hash.new
h["R"] = "Ruby"
p h
p h["R"]

# シンボルをセットする
h[:J] = "Java"
p h

h = Hash.new
h.store("R", "Ruby")
p h.fetch("R")

# keyが登録されていない場合は例外が発生する
#h = Hash.new
#p h.fetch("N")

# 第２引数を設定すればキーが登録されていない
# 場合のデフォルト値
h = Hash.new
h.store("R", "Ruby")
p h.fetch("R", "(undef)")
p h.fetch("N", "(undef)")

h = Hash.new
p h.fetch("N") {String.new}

h = {"a" => "b", "c" => "d"}
p h.keys
p h.values
p h.to_a

# ハッシュのデフォルト値
# 1. ハッシュの生成時にデフォルト値を指定する
h = Hash.new(1)
h["a"] = 10
p h["a"]
p h["x"]
p h["y"]

# 2. ハッシュのデフォルト値を生成するブロックを指定する
h = Hash.new{|hash, key| 
  hash[key] = key.upcase
}
h["a"] = "b"
p h["a"]
p h["x"]
p h["y"]
p h

# 3. fetchメソッドで指定する

h = Hash.new{|hash, key|
  hash[key] = key.upcase
}
p h.fetch("x", "(undef)")

# 13.4 ハッシュがキーや値を持っているか調べる
h = {"a" => "b", "c" => "d"}
p h.key?("a")
p h.has_key?("a")
p h.include?("z")
p h.member?("z")

p h.value?("b")
p h.has_value?("z")

# 13.5 ハッシュの大きさを調べる
h = {"a" => "b", "c" => "d"}
p h.length
p h.size

p h.empty?
h2 = Hash.new
p h2.empty?

# 13.6 キーと値を削除する
h = {"R" => "Ruby"}
p h["R"]
h.delete("R")
p h["R"]
p h.empty?

h = {"R" => "Ruby"}
p h.delete("P"){|key| "no #{key}"}

h = {"R" => "Ruby", "P" => "Perl"}
p h.delete_if{|key, value| key == "P"}

h = {"R" => "Ruby", "P" => "Perl"}
p h.delete_if{|key, value| key == "L"}
p h.reject!{|key, value| key == "L"}
p h.reject!{|key, value| key == "P"}
p h

# 13.7 ハッシュを初期化する
h = {"a" => "b", "c" => "d"}
h.clear
p h.size
p h

h = {"k1" => "v1"}
g = h
h.clear # ここで変数hとgが参照しているハッシュがクリアされる
p h
p g

h = {"k1" => "v1"}
g = h
h = Hash.new # 変数hは新しいハッシュの名前になる
p h
p g

# ハッシュのハッシュ
table = {"A" => {"a" => "x", "b" => "y"},
         "B" => {"a" => "v", "b" => "w"}}
p table["A"]["a"]
p table["B"]["a"]
