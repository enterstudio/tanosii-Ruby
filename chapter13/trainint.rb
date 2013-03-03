# coding: utf-8
# (1)
print "(1)-----\n"
wday = {"sunday" => "日曜日",
        "monday" => "月曜日",
        "thuesday" => "火曜日",
        "wednesday" => "水曜日",
        "thuesday" => "木曜日",
        "friday" => "金曜日",
        "saturday" => "土曜日"}

p wday["sunday"]
p wday["monday"]
p wday["saturday"]

# (2)
print "(2)-----\n"
p wday.size

# (3)
print "(3)-----\n"
wday.each do |key, value|
  printf("「#{key}」は#{value}のことです。\n")
end

# (4)
print "(4)-----\n"
def str2hash(str)
 hash = Hash.new
 ary = str.split(/\s+/)
 while key = ary.shift
   value = ary.shift
   hash[key] = value
 end
 return hash
end

p str2hash("blue 青 white 白\nred 赤")
