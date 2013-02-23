# 11.3

# 11.3.1
alpha = ["a", "b", "c", "d", "e"]
p alpha[1]
p alpha[-1] # マイナスは末尾から
p alpha[-2]
p alpha[-0] # 0と同じ

p alpha[1..3]
p alpha[1..7]

p alpha[1...3]

p alpha[2, 2]
p alpha[2, 3]

# 11.3.2
alpha = ["a", "b", "c", "d", "e", "f"]
alpha[1] = "B"
alpha[4] = "E"
p alpha

alpha = ["a", "b", "c", "d", "e", "f"]
alpha[2, 3] = ["C", "D", "E"]
p alpha

alpha = ["a", "b", "c", "d", "e", "f"]
alpha[2..4] = ["C", "D", "E"]
p alpha

# 11.3.3
alpha = ["a", "b", "c", "d", "e", "f"]
alpha[2, 0] = ["X", "Y"]
p alpha

# 11.3.4
alpha = %w(a b c d e f)
p alpha.values_at(1, 3, 5)

