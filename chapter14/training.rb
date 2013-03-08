# coding:utf-8

# (1)
address = "hoge@example.com"
/(.+)@(.+)/ =~ address
p $1
p $2

# (2)
str = "オブジェクト指向は難しい！なんて難しいんだ！"
str.gsub!(/難しいんだ/, "簡単なんだ").gsub!(/難しい/, "簡単だ")
p str

# (3)
def word_capitalize(str)
  ary = str.split(/\-/)
  ary.collect! do |word|
    word.capitalize
  end
  ary.join("-")

end
p word_capitalize("in-rely-to")
p word_capitalize("X-MAILER")
