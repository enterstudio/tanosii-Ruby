# 11.11

ary1 = [1, 2, 3, 4, 5]
ary2 = [10, 20, 30, 40, 50]
ary3 = [100, 200, 300, 400, 500]

result = []
ary1.zip(ary2, ary3) do |a, b, c|
  result << a + b + c
end
p result

# ary1の要素数分ループするので、
# 要素数が少ない配列はnilが返る
#ary3 = [100, 200, 300, 400]
#result = []
#ary1.zip(ary2, ary3) do |a, b, c|
#  result << a + b + c
#end
#p result
