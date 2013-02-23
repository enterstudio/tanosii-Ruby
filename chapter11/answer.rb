# (1)
print "(1)----\n"
a = (1..100).to_a
p a

# (2)
print "(2)----\n"
a = (1..100).to_a
a2 = a.collect{|i| i * 100 }
p a2
a.collect!{|i| i * 100 }
p a

# (3)
print "(3)----\n"
a = (1..100).to_a

a3 = a.reject{|i| i % 3 != 0}
p a3

a4 = a.select{|i| i % 3 == 0 }
p a4

a.reject!{|i| i % 3 != 0}
p a

# (4)
print "(4)----\n"
a = (1..100).to_a

a2 = a.reverse
p a2

a2 = a.sort{|n1, n2| -(n1 <=> n2) }
p a2

a2 = a.sort_by{|i| -i}
p a2

# (5)
print "(5)----\n"
a = (1..100).to_a
result = 0
a.each {|i| result += i}
p result

p a.inject(0){|memo, i| memo += i}

# (6)
print "(6)----\n"
ary = (1..100).to_a
result = Array.new
10.times do |i|
  result << ary[i*10, 10]
end
p result

# (7)
print "(7)----\n"
def sum_array(ary1, ary2)
  result = Array.new
  i = 0
  ary1.each do |elem1|
    result << elem1 + ary2[i]
    i += 1
  end
  result
end
p sum_array([1, 2, 3], [4, 6, 8])

def sum_array(ary1, ary2)
  result = Array.new
  ary1.zip(ary2){|a, b| result << a + b}
  result
end
p sum_array([1, 2, 3], [4, 6, 8])
