
filename = ARGV[0]
open("|gunzip -c #{filename}") do |io|
  while line = io.gets
    print line
  end
end

