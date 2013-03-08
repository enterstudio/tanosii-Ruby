# 14.7

str = "http://www.ruby-lang.org/ja/"

p(/http:\/\// =~ str)

# [^\/]*は「/」を含まない文字の連続
/http:\/\/([^\/]*)\// =~ str
print $1, "\n"

/http:\/\/([^\/]*)\// =~ "http://abc/def/"
print $1, "\n"

%r|http://([^/]*)/| =~ str
print "server address: ", $1, "\n"
