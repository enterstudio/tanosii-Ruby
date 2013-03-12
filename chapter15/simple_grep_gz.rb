pattern = Regexp.new(ARGV[0])
filename = ARGV[1]

file = IO.popen("ls")
while text = file.gets do
  print text
end
file.close

if /.gz$/ =~ filename
  file = IO.popen("gunzip -c #{filename}")
else
  file = File.open(filename)
end

while text = file.gets do
  if pattern =~ text
    print text
  end
end

file.close

