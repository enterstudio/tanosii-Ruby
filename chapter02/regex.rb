# 2.3
p(/Ruby/ =~ "Ruby")
p(/Ruby/ =~ "Diamond")

p(/Ruby/ =~ "Yet Another Ruby Hacker,")
p(/Yet Another Ruby Hacker,/ =~ "Ruby")

p(/Ruby/ =~ "ruby")
p(/Ruby/ =~ "RUBY")
p(/Ruby/i =~ "ruby")
p(/Ruby/i =~ "RUBY")
p(/Ruby/i =~ "rUbY")
