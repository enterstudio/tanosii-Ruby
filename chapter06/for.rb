# 6.5

sum = 0
for i in 1..5
  sum = sum + i
end
print sum, "\n"

# times を使用した場合
from = 10
to = 20
sum = 0
(to-from+1).times do |j|
  sum = sum + (j+from)
end
print sum, "\n"

# for を使用した場合
from = 10
to = 20
sum = 0
for k in from..to
  sum = sum + k
end
print sum, "\n"

