# 8.6

def fetch_and_downcase(ary, index)
  if str = ary[index]
    return str.downcase
  end
end

# 配列を渡す
ary = ["Boo", "Foo", "Woo"]
p fetch_and_downcase(ary, 1)

# ハッシュを渡す
hash = { 0 => "Boo", 1 => "Foo", 2 => "Woo" }
p fetch_and_downcase(hash, 1)
