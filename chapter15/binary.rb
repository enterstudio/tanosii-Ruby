File.open("hoge.txt", "w") do |io|
  io.binmode
  io.write "Hello, world\n"
  io.write "Hello, world\n"
end
