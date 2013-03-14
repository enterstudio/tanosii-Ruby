File.rename("before.txt", "after.txt")

# ディレクトリの下に移動する
# ディレクトリが存在しない場合はエラーになる
File.rename("after.txt", "backup/after.txt")
