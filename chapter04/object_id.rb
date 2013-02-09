ary1 = []
ary2 = []
p ary1.object_id
p ary2.object_id

str1 = "foo"
str2 = str1
str3 = "f" + "o" + "o"
str4 = "foo"
p str1, " ", str1.object_id
p str2, " ", str2.object_id
p str3, " ", str3.object_id
p str4, " ", str4.object_id
p str1.equal?(str2)
p str1.equal?(str3)

p str1 == str2

p 1.0 == 1
p 1.0.eql? 1

hash = {0 => "0"}
p hash[0.0]
