Dir.mkdir("hogeDir")

p Dir.glob("*")

# 空のディレクトリのみ削除可能
Dir.rmdir("hogeDir")

p Dir.glob("*")
