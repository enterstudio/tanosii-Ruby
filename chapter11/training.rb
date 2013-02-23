# (1)
print "(1)----\n"
a = Array.new(100) {|i| i + 1}
p a
p a[0]
p a[99]

# (2)
print "(2)----\n"
a2 = a.collect{|i| i * 100}
print "a2", a2, "\n"
a.collect!{|i| i * 100}
print "a", a, "\n"

# (3)
print "(3)----\n"
a = Array.new(100) {|i| i + 1}
a3 = a.reject{|i| i % 3 != 0}
print "a3", a3, "\n"
a.reject!{|i| i % 3 != 0}
print "a", a, "\n"

# (4)
print "(4)----\n"
a = Array.new(100) {|i| i + 1}
a.reverse!
p a

# (5)
print "(5)----\n"
a = Array.new(100) {|i| i + 1}
sum = 0
a.each do |i|
  sum += i
end
p sum

# (6)
print "(6)----\n"
ary = Array.new(100) {|i| i + 1}
result = Array.new
10.times do |i|
  result << ary[i*10...i*10+10]
end
p result

# (7)
print "(7)----\n"
def sum_array(a1, a2)
  result = Array.new
  a1.zip(a2) do |i1, i2|
    result << i1 + i2
  end

  result
end
p sum_array([1, 2, 3], [4, 6, 8])
