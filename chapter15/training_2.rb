
# (a)
def overWrite1(file)
  io = File.open(file, "r+")

  lines = io.readlines
  io.rewind
  io.truncate(0)
  
  lines.reverse!
  p lines
  lines.each do |line|
    p line
    io.puts("#{line}")
  end
  io.close
end

# (b)
def overWrite2(file)
  io = File.open(file, "r+")
  # 先頭行を読み込む
  p io.gets
  # 現在のポインタ以降を削除
  io.truncate(io.pos)

  io.close
end

# (c)
def overWrite3(file)
  io = File.open(file, "r+")
  nowLine = ""
  while line = io.gets
    nowLine = line
    p nowLine
  end

  io.rewind
  io.truncate(0)
  io.write(nowLine)

  io.close

end

overWrite1(ARGV[0])
overWrite2(ARGV[1])
overWrite3(ARGV[2])

