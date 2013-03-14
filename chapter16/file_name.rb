p File.basename("/usr/local/bin/ruby")
p File.basename("src/ruby/file.c", ".c")
p File.basename("file.c", ".c")

p File.dirname("/usr/local/bin/ruby")
p File.dirname("ruby")
p File.dirname("/")

p File.extname("helloruby.rb")
p File.extname("ruby-1.8.5.tar.gz")
p File.extname("img/foo.png")
p File.extname("/usr/local/bin/ruby")
p File.extname("~/.zshrc")
p File.extname("/etc/init.d/ssh")

p File.split("/usr/local/bin/ruby")
p File.split("ruby")
p File.split("/")

# 多重代入
dir, base = File.split("/usr/local/bin/ruby")
p dir
p base

p File::SEPARATOR + " de join"
p File.join("/usr/local/bin", "ruby")
p File.join(".", "ruby")

p Dir.pwd
p File.expand_path("bin")
p File.expand_path("../bin")
p File.expand_path("bin", "/usr")
p File.expand_path("../etc", "/usr")

