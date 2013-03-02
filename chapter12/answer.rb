# coding:utf-8

# (1)
str = "Ruby is an object oriented programming language"
ary = str.split
p ary

# (2)
p ary.sort

# (3)
p ary.sort_by{|s| s.downcase}

# (4)
cap_ary = ary.collect{|word| word.capitalize}
str = ""
cap_ary.each do |s|
  str << s + " "
end
p str
p cap_ary.join(" ")

# (5)
str = "Ruby is an object oriented programming language"
count = Hash.new
str.each_char do |c|
  count[c] = 0 unless count[c]
  count[c] += 1
end
count.keys.sort.each do |c|
  printf("'%s': %s\n", c, "*" * count[c])
end

#(6)
def kan2num(string)
  digit4 = digit3 = digit2 = digit1 = "0"
  
  nstring = string.dup
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
 
  return (digit4+digit3+digit2+digit1).to_i
end
 
p kan2num("七千八百二十三")
p kan2num("千八百二十三")
p kan2num("八百二十三")
p kan2num("百二十三")
p kan2num("百三")
p kan2num("二十三")
p kan2num("十三")
p kan2num("三")
