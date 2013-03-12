
File.open("foo.txt") do |io|
  while line = io.gets
    puts line
  end
  io.close

  # closeされたかチェック
  puts io.closed?

  data = File.read("foo.txt")
  puts data
  # closeされたかチェック
  puts io.closed?
end

