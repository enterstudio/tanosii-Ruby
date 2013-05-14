# encoding: utf-8
require './book'
require './booklist'

# 本のリストを作る。最初はリストは空になる
booklist = BookList.new

# リストに挿入したい本を用意する
b1 = Book.new("せめて、本格らしく", "城平京")
b2 = Book.new("Neo Aqua III", "Neo Aqua")

# リストに本を追加する
booklist.add(b1)
booklist.add(b2)

# リストの本を出力する
print booklist[0].title, "\n"
print booklist[1].title, "\n"

booklist.each_title do |title|
  print title, "\n"
end

booklist.each_title_author do |title, author|
  print title, ",", author, "\n"
end

booklist.find_by_author(/Neo/) do |book|
  print book.title, ",", book.author, "\n"
  end
