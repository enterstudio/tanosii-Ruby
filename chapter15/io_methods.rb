
io = File.open("foo.txt")
while line = io.gets
  line.chomp!
  p line
end
p io.eof?


io = File.open("foo.txt")
io.each do |line2|
  line2.chomp!
  p line2
end
p io.eof?

io = File.open("foo.txt")
ary = io.readlines
ary.each do |line3|
  line3.chomp!
  p line3
end
p io.eof?

#while line = $stdin.gets
#  printf("%3d %s", $stdin.lineno, line)
#end

io = File.open("foo.txt")
while ch = io.getc
  p ch
end

File.open("hello.txt") do |io2|
  p io2.getc # １文字取り出す
  io2.ungetc("H") # １文字をioオブジェクトに戻す
  p io2.gets # １行出力
  io2.close
end

io = File.open("hello.txt")
io.each_byte do |a|
  p a
end


puts "-----"
File.open("hello.txt") do |io3|
  p io3.read(5)
  p io3.read
end


