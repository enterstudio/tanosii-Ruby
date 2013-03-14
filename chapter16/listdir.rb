require 'find'

# 無視するディレクトリ名
IGNORES = [ /^\./, /^CVS$/, /^RCS$/ ]

def listdir(top)
  Find.find(top) do |path|
    p " " + path
    if FileTest.directory?(path)
      dir, base = File.split(path)
      IGNORES.each do |re|
        if re =~ base  # 無視したディレクトリの場合
          Find.prune   # それ以下の検索を省略する
        end
      end
      puts path
    end
  end
end

listdir(ARGV[0])
