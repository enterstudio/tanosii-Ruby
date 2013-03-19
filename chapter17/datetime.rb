require "date"

t = DateTime.now
puts t
p t
p t.year
p t.month
p t.day
p t.hour
p t.min
p t.sec
p t.wday
p t.mday
p t.yday
p t.zone

p t.strftime("%Y/%m/%d %H:%M:%S")
p t.strftime("%a %b %H:%M:%S %Z %Y")

p t.to_s

puts DateTime.parse("Tue Oct 13 22:59:36 JST 2009")
puts DateTime.parse("Tue, 13 Oct 2009 20:54:15 +0900")

d = DateTime.now
p d.to_time

t1 = DateTime.now
sleep(10)
t2 = DateTime.now
p t2 - t1

t = DateTime.now
puts t
puts t + 10

t = DateTime.now
p t.offset

t1 = DateTime.now
t2 = t1.new_offset(0)
puts t1
puts t2

t1 = DateTime.now
t2 = t1 + Rational(5, 24) # ５時間後
puts t1
puts t2

t = DateTime.now
p(t.offset * 24).to_i
p(t.offset * 1440).to_i
p(t.offset * 86400).to_i
