def traverse(path)
  # ディレクトリの場合
  if File.directory?(path)
    dir = Dir.open(path)
    while name = dir.read
      # カレントディレクトリと親ディレクトリを読み飛ばす
      # 何度も同じディレクトリを処理し無限ループになるのを防ぐ
      next if name == "."
      next if name == ".."
      traverse(path + "/" + name)
    end
    dir.close
  # ファイルの場合
  else
    process_file(path)
  end
end

def process_file(path)
  puts path
end

traverse(ARGV[0])
