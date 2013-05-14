# encoding: utf-8
sum = 0
outcome = {"参加費"=>1000, "ストラップ代"=>1000, "懇親会会費"=>4000}
outcome.each do |pair|
  print pair[0]
  sum += pair[1]
end
print "合計: ", sum, "\n"
