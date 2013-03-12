File.open("hello.txt") do |io|
  p io.read(5)
  p io.pos
  io.pos = 0
  p io.gets

  io.seek(3, IO::SEEK_SET)
  p io.gets
  
  io.pos = 0
  io.seek(3, IO::SEEK_CUR)
  p io.gets

  io.pos = 0
  io.seek(3, IO::SEEK_END)
  p io.gets
end

File.open("hello.txt", "r+") do |io|
  p io.gets
  io.rewind
  p io.gets

  io.truncate(0)

end


