# encoding: utf-8
# 2.1
name = ["小林", "林", "高野", "森岡"]
p name

puts "====="
name[0] = "野尻"
p name

puts "====="
name[4] = "野尻"
p name

puts "====="
# 間にはnilが入るみたい
name[10] = "ミスターX"
p name

puts "====="
num = [3, 1, 4, 1, 5, 9, 2, 6, 5]
p num.size

puts "====="
mixed = [1, "歌", 2, "風", 3]
p num
p mixed.size

name.each do |n|
  puts n
end
