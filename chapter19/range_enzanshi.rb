r = Range.new(1, 10)
p r

sum = 0
for i in r
  sum += i
end
print sum, "\n"

sum = 0
for i in 1..10
  sum += i
end
print sum, "\n"

alpha = ["a", "b", "c", "d", "e", "f"]
alpha[2..4] = ["C", "D", "E"]
p alpha

alpha = ["a", "b", "c", "d", "e", "f"]
p alpha[2..4]
p alpha[2...4]
