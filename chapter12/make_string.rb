# encoding:utf-8
# 12.1

str1 = "これも文字列"
str2 = 'あれも文字列'
p str1
p str2

moji = "文字列"
str1 = "あれも#{moji}"
p str1
str2 = 'あれも#{moji}'
p str2

desc = %Q{Rubyの文字列には「''」も「""」も使われます。}
str = %q|Ruby said, 'Hello world!'|
print desc
print str

# ヒアドキュメントのサンプル
10.times do |i|
  10.times do |j|
    print(<<"EOB") # 最後のEOBの前にスペース、タブが書けない
    i: #{i}
    j: #{j}
    i*j = #{i*j}
EOB
  end
end

10.times do |i|
  10.times do |j|
    print(<<-"EOB") # <<-を書いた場合に最後のEOBの前にスペース、タブが書ける
i: #{i}
j: #{j}
i*j = #{i*j}
    EOB
  end
end

# ヒアドキュメントを変数に代入する場合
str = <<-EOB
Hello!
Hello!
Hello!
EOB
print str

# printf
n = 123
printf("%d\n", n)
printf("%4d\n", n)
printf("%04d\n", n)
printf("%+d\n", n)

n = "Ruby"
printf("Hello, %s!\n", n)
printf("Hello, %8s!\n", n)
printf("Hello, %-8s!\n", n)

# sprintf
# フォーマットした文字列を作成する
n = 123
p sprintf("%d\n", n)
p sprintf("%4d\n", n)
p sprintf("%04d\n", n)
p sprintf("%+d\n", n)

n = "Ruby"
p sprintf("Hello, %s!\n", n)
p sprintf("Hello, %8s!\n", n)
p sprintf("Hello, %-8s!\n", n)
