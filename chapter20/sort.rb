array = ["bcef", "ec", "c", "aj", "deedg"]

sorted = array.sort do |a, b|
  a <=> b
end

print sorted, "\n"

sorted = array.sort do |a, b|
  a.length <=> b.length
end

print sorted, "\n"

ary = %w{1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20}
num = 0
ary.sort do |a, b|
  num += 2
  a.length <=> b.length
end
p num

ary.sort_by do |item|
  item.length
end

