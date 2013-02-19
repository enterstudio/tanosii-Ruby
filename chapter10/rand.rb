# 10.6

p rand
p rand(100)
p rand(100)

# Ruby 1.9+
p Random.rand

# 乱数列を初期化する
srand(1)
p [rand, rand, rand]
srand(1)
p [rand, rand, rand]

srand(100)
p [rand(100), rand(100), rand(100)]
srand(100)
p [rand(100), rand(100), rand(100)]

