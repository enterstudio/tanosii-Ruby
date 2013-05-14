pr = Proc.new do
  p "a"
end
p "b"
pr.call()
