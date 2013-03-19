#coding:utf-8
require "time"

# (1)
def jparsedate(str)
  /(\d+)年(\d+)月(\d+)日(午前|午後)(\d+)時(\d+)分(\d+)秒/ =~ str
  p $1
  p $2
  p $3
  p $4
  p $5
  p $6
  p $7

  hour = $5
  if $4 == "午後"
    hour = hour.to_i + 12
  end

  Time.parse("#{$1}/#{$2}/#{$3} #{hour}:#{$6}:#{$7}")

end
p jparsedate("2010年12月23日午後8時17分50秒")

# (2)

def ls_t(path)
  dir = Dir.open(path)
  ary = Array.new
  while name = dir.read
    next if File.directory?(name)
    ary.push(name)
  end
  dir.close

  ary.sort_by! do |a|
    File.mtime(File.join(path,a))
  end
  puts ary
end

ls_t(".")

# (3)
require "date"
today = Date.today
startday = Date.new(today.year, today.month, 1) # 月の開始日
endday = Date.new(today.year, today.month, -1) # 月の最終日

youbi = startday.strftime("%a")
month = startday.strftime("%b")
year = startday.strftime("%Y")

printf("%s %s\n", month, year)
printf("Su Mo Tu We Th Fr Sa\n")
title = %w(Su Mo Tu We Th Fr Sa)

week = Array.new # 一週間を入れる配列
count = 0
days = Array.new(7, "  ")
for day in startday..endday
  if count == title.length - 1
    week.push(days)
    days = Array.new(7, "  ") # 一週間の日付を入れる配列
    count = 0
  end

  youbi = day.strftime("%a") # 曜日を取得
  hi = day.strftime("%d") # 日を取得

  /^(\w\w)/ =~ youbi
  youbiIndex = title.index($1)
  days[youbiIndex] = hi
  count = youbiIndex
end
# 最終週をセット
week.push(days)

# 一週間ずつ表示
week.each do |w|
  w.each do |d|
    print d , " "
  end
  print "\n"
end
