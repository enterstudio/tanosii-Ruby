
def wc(file)
  nline = nword = nchar = 0
  File.open(file) {|io|
    io.each{|line|
      p line
      # 空白、タブ、改行で分割
      # rejectで分割した単語が空の場合に配列から削除している
      words = line.split(/\s+/).reject{|w| w.empty?}
      p words
      nline += 1
      nword += words.length
      nchar += line.length
    }
  }
  puts "lines=#{nline} words=#{nword} chars=#{nchar}"
end

wc(__FILE__)
