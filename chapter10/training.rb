# encoding:utf-8
# (1)
def cels2fahr(cels)
  return cels * 9 / 5 + 32
end

p cels2fahr(10)

# (2)
def fahr2cels(fahr)
  return (fahr - 32) / 9 * 5
end

p fahr2cels(50)
100.times do |i|
  print "接死:", i, "華氏:", cels2fahr(i), "\n"
end

# (3)
def dice
  num = 0
  while num == 0
    num = rand(6)
  end
  return num
end

p dice

# (4)
def dice10
  sum = 0
  10.times do |i|
    num = dice
    print i, ":", num, "\n"
    sum += num
  end
  return sum
end

p dice10

# (5)
def prime?(num)
  cnt = 0
  1.upto(num) do |i|
    cnt += 1 if (num % i) == 0
  end

  return true if cnt == 2
  return false if cnt != 2
end
p prime?(2)
p prime?(3)
p prime?(5)
p prime?(7)
p prime?(10)
