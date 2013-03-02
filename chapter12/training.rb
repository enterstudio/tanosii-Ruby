# coding:utf-8

# (1)
print "(1)-----\n"
str = "Ruby is an object oriented programming language"
words = str.split()
p words

# (2)
print "(2)-----\n"
p words.sort

# (3)
print "(3)-----\n"
words.sort! do |a, b|
  c = a.upcase
  d = b.upcase
  c <=> d
end
p words

# (4)
print "(4)-----\n"
str = "Ruby is an object oriented programming language"
words = str.split()
result = ""
words.each do |word|
  result += " " + word.capitalize
end
p result.strip

# (5)
print "(5)-----\n"
str = "Ruby is an object oriented programming language"
words = str.each_char.collect
hash = {}

words.each do |w|
  tmp = hash[w]
  if tmp 
    hash[w] = tmp + "*"
  else 
    hash[w] = "*"
  end
end
p hash

# (6)
print "(6)-----\n"
def kan2num(str)
  digit4 = digit3 = digit2 = digit1 = "0"

  nstring = str.dup
  nstring.gsub!(/一/, "1")
  nstring.gsub!(/二/, "2")
  nstring.gsub!(/三/, "3")
  nstring.gsub!(/四/, "4")
  nstring.gsub!(/五/, "5")
  nstring.gsub!(/六/, "6")
  nstring.gsub!(/七/, "7")
  nstring.gsub!(/八/, "8")
  nstring.gsub!(/九/, "9")
 
  if nstring =~ /((\d)?千)?((\d)?百)?((\d)?十)?(\d)?$/
    if $1
      digit4 = $2 || "1"
    end
    if $3
      digit3 = $4 || "1"
    end
    if $5
      digit2 = $6 || "1"
    end
    digit1 = $7 || "0"
  end
  return (digit4 + digit3 + digit2 + digit1).to_i
end
p kan2num("七千百二十三")
p kan2num("千八百二十三")
p kan2num("八百二十三")
p kan2num("百二十三")
p kan2num("百三")
p kan2num("二十三")
p kan2num("十三")
p kan2num("三")
