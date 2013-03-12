
def tail(lines, file)
  # いったんqueueという変数に読み込んだ行を保存させるのがポイント
  queue = Array.new
  open(file) do |io|
    while line = io.gets
      queue.push(line)
      if queue.size > lines
        # 表示する行が指定された行を超えたので、
        # 先頭を取り除く
        queue.shift
      end
    end
  end
  queue.each{|line| print line}
end

puts "==="
tail(10, __FILE__)

puts "==="
tail(3, __FILE__)

puts "==="
tail(100, __FILE__)


