p Time.new
p Time.now

t = Time.now
p t
p t.year
p t.month
p t.day
p t.hour
p t.min
p t.sec
p t.usec
p t.to_i
p t.wday
p t.mday
p t.yday
p t.zone

t = Time.mktime(2009)
p t
t = Time.mktime(2009, 10, 11, 22, 12, 56)
p t

t1 = Time.now
sleep(10)
t2 = Time.now
p t1 < t2
p t2 - t1

t = Time.now
p t
t2 = t + 60 * 60 * 24
p t2

t = Time.now
p t.to_s
p t.strftime("%a %b %d %H:%M:%S %z %Y")
p t.strftime("%Y-%m-%d %H:%M:%S %z")

require "time"
t = Time.now
p t.rfc2822
p t.iso8601

t = Time.now
p t
t.utc
p t
t.localtime
p t

p Time.parse("Sat Oct 17 11:54:15 UTC 2009")
p Time.parse("Sat, 17 Oct 2009 20:54:15 +0900")
p Time.parse("2009/10/17")
p Time.parse("2009/10/17 20:54:15")
p Time.parse("H21.10.17")
p Time.parse("S48.9.28")


