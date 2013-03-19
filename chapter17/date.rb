require 'date'

d = Date.today
puts d
p d.year
p d.month
p d.day
p d.wday
p d.mday
p d.yday

d = Date.new(2009, 9, 25)
puts d

d = Date.new(2009, 4, -1)
puts d
d = Date.new(2009, 2, -1)
puts d
d = Date.new(2008, 2, -1)
puts d

d = Date.today
puts d
puts d + 1
puts d + 100
puts d - 1
puts d - 100

puts d >> 1
puts d >> 100
puts d << 1
puts d << 100

t = Date.today
p t.strftime("%Y/%m/%d %H:%M:%S")
p t.strftime("%a %b %d %H:%M:%S %Z %Y")
p t.to_s

puts Date.parse("Tue Oct 14 11:50:12 JST 2009")
puts Date.parse("H21.10.14")
puts Date.parse("S48.9.28")
