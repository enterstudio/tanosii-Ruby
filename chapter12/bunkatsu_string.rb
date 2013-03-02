# encoding:utf-8

# 12.3

str = "Ruby In A Nutsell:Yukihiro Matsumoto:2001:USA"
column = str.split(/:/)
p column

str = "Ruby In A Nutshell  Yukihiro Matsumoto 2001USA"
colum = str.unpack("a20a20a4a*")
p column

