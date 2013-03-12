# coding:utf-8

# (1)

file = ARGV[0]
io = File.open(file)

lineCount = 0
wordCount = 0
charCount = 0
io.each do |line|
  line.chomp!
  next if line == ""
  lineCount += 1
  words = line.split(/ /)
  wordCount += words.length
  words.each do |word|
    charCount += word.length
  end
end
printf("行数：%d\n", lineCount)
printf("単語数：%d\n", wordCount)
printf("文字数：%d\n", charCount)
io.close
