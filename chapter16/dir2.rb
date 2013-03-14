dir = Dir.open("/usr/bin")
while name1 = dir.read
  p name1
end
dir.close

dir = Dir.open("/usr/bin")
dir.each do |name2|
  p name2
end
dir.close

Dir.open("/usr/bin") do |dir2|
  dir2.each do |name3|
    p name3
  end
end
