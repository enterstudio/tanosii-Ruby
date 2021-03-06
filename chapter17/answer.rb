# coding:utf-8
# (1)

def jparsedate(str)
  now = Time.now # 取得出来なかった項目を補うため現在時刻を取得
  year = now.year
  month = now.month
  day = now.day
  hour = now.hour
  min = now.min
  sec = now.sec
  str.scan(/(午前|午後)?(\d+)(年|月|日|時|分|秒)/) do
    case $3
    when "年"
      year = $2.to_i
    when "月"
      month = $2.to_i
    when "日"
      day = $2.to_i
    when "時"
      hour = $2.to_i
      hour += 12 if $1 == "午後"
    when "分"
      min = $2.to_i
    when "秒"
      sec = $2.to_i
    end
  end
  return Time.mktime(year, month, day, hour, min, sec)
end

p jparsedate("2010年12月23日午後8時17分50秒")
p jparsedate("12月23日午後8時17分50秒")
p jparsedate("午前8時17分50秒")
p jparsedate("8時17分50秒")

# (2)
def ls_t(path)
  entries = Dir.entries(path)
  entries.reject!{|name| /^\./ =~ name} # .で始まるファイルを削除

  mtimes = Hash.new
  entries = entries.sort_by do |name| # ソートしながらハッシュにセットする
    mtimes[name] = File.mtime(File.join(path, name))
  end

  entries.each do |name|
    printf("%-40s %s\n", name, mtimes[name]) # ファイル名は40桁で左詰めで表示
  end
rescue => ex
  puts ex.message

end

ls_t(ARGV[0] || ".")

# (3)
require "date"

module Calendar
  WEEK_TABLE = [
    [99, 99, 99, 99, 99, 99,  1,  2,  3,  4,  5,  6,  7],
    [ 2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14],
    [ 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21],
    [16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28],
    [23, 24, 25, 26, 27, 28, 29, 30, 31, 99, 99, 99, 99],
    [30, 31, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99],
  ]

  module_function

  def cal(year, month)
    first = Date.new(year, month, 1)      # 指定された月の１日
    end_of_month = ((first >> 1) - 1).day # 翌月の１日の前日
    start = 6 - first.wday # first.wdayで週の何日目か

    puts first.strftime("%B %Y").center(21)
    puts " Su Mo Tu We Th Fr St"
    WEEK_TABLE.each do |week|
      buf = ""
      week[start, 7].each do |day|
        if day > end_of_month
          buf << "   "
        else
          buf << sprintf("%3d", day)
        end
      end
      puts buf
    end
  end
end
t = Date.today
Calendar.cal(t.year, t.month)
