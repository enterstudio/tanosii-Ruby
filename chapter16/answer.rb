# (1)
def print_libraries
  $:.each do |path|
    next unless FileTest.directory?(path) # $:に含まれているパスからディレクトリ以外は処理しない
    Dir.open(path) do |dir|
      dir.each do |name|
        if name =~ /\.rb$/i # 拡張子が.rb,.RBのファイルのみ表示
          puts name
        end
      end
    end
  end
end

print_libraries

# 別解
require "rbconfig"
def print_libraries2
  $:.each do |path|
    next unless FileTest.directory?(path)
    dlext = RbConfig::CONFIG["DLEXT"]
    Dir.open(path) do |dir|
      dir.each do |name|
        if name =~ /\.rb$/i || name =~ /\.#{dlext}$/i
          puts name
        end
      end
    end
  end
end

print_libraries2

# (2)
require "find"
def du(path)
  result = 0
  Find.find(path) {|f|
    if File.file?(f)
      p f
      result += File.size(f)
    end
  }
  printf("%d %s\n", result, path)
  return result
end
du(ARGV[0] || ".")
