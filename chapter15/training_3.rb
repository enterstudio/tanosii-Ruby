
def tail(col, file)
  io = File.open(file)
  lines = io.readlines
  len = lines.size
  start = len - col.to_i
  start = 0 if start <= 0

  for i in start..len
    break if lines[i] == nil
    puts lines[i]
  end

end

tail(ARGV[0], ARGV[1])
