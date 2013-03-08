# coding: utf-8

# (1)
def get_local_and_domain(str)
  str =~ /^([^@]+)@(.*)$/
  localpart = $1
  domain = $2
  return [localpart, domain]
end
p get_local_and_domain("info@example.com")
p get_local_and_domain("@example.com")
p get_local_and_domain("info@")
p get_local_and_domain("@")
p get_local_and_domain("info")

# (2)
# ポイントは「難しいんだ」を先に置換している
s = "オブジェクト指向は難しい！　なんて難しいんだ！"
puts s.gsub(/難しいんだ/, "簡単なんだ").gsub(/難しい/, "簡単だ")

# (3)
def word_capitalize(str)
  # メソッドチェインを使用している
  # 各メソッドは処理後のオブジェクトを返却している
  str.split(/\-/).collect{|w| w.capitalize}.join('-')
end
p word_capitalize("in-reply-to")
p word_capitalize("X-MAILER")
