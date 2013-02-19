# 回答例

# (1)
def cels2fahr(cels)
  return cels.to_f * 9 / 5 + 32
end

# (2)
def fahr2cels(fahr)
  return (fahr.to_f - 32) * 5 / 9
end

1.upto(100) do |i|
  print i, " ", fahr2cels(i), "\n"
end

# (3)
def dice
  return rand(6) + 1
end

# (4)
def dice10
  ret = 0
  10.times do
    ret += dice
  end
  ret
end

# (5)
def prime?(num)
  return false if num < 2
  2.upto(Math.sqrt(num)) do |i|
    if num % i == 0
      return false
    end
  end
  return true
end
