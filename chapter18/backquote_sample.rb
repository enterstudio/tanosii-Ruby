lslist = `ls`
p lslist

lslist.scan(/(.+\.rb)/) do |matched|
  puts matched
end

