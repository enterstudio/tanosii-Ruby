# 10.3.1

# ans = x.divmod(y)
# -> x == ans[0] * y + ans[1]
p 10.divmod(3.5)
p 10.divmod(-3.5)
p -10.divmod(3.5)
p -10.divmod(-3.5)

# x.modulo(y)
# -> x % y
p 10.modulo(3.5)
p 10.modulo(-3.5)

# x.remainder(y)
p 10.remainder(3.5)
p 10.remainder(-3.5)
p -10.remainder(3.5)
p -10.remainder(-3.5)

# 0による割り算
begin
  p 1 / 0
rescue => ex
  p ex
end
p 1 / 0.0
p 0 / 0.0
begin
  p 1.divmod(0)
rescue => ex
  p ex
end
begin
  p 1.divmod(0.0)
rescue => ex
  p ex
end

