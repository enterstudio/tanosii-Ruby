# 10.7

ary = []
10.times do |i|
  ary << i
end
p ary

ary = []
2.upto(10) do |i|
  ary << i
end
p ary

ary = []
10.downto(2) do |i|
  ary << i
end
p ary

ary = []
2.step(10, 3) do |i|
  ary << i
end
p ary

ary = []
10.step(2, -3) do |i|
  ary << i
end
p ary

# Ruby1.8.7+
ary = 2.step(10).collect{|i| i * 2 }
p ary

# こうも書ける
ary = 2.step(10).collect do |i|
  i * 2
end
p ary
