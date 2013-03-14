# (1)
def print_libraries
  $:.each do |dir|
    dir = Dir.open(dir)
    while file = dir.read
      next if file == "."
      next if file == ".."
      p file
    end
    dir.close
  end
end

print_libraries

# (2)
def du(path)
 total = 0
 dir = Dir.open(path)
 while name = dir.read
   next if name == "."
   next if name == ".."
   if FileTest.directory?(name) # ディレクトリの場合再帰
     p name
     #total += du(name)
   else # ファイルの場合
     p File.join(path, name)
     total += File.size(File.join(path,name))
   end
 end
 dir.close
 print path, ":", total, "\n"
 total
end

du(".")
