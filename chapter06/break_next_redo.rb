# encoding: utf-8"

# 6.10
print "breakの例:\n"
i = 0
["Perl", "Python", "Ruby", "Scheme"].each do |lang|
  i += 1
  if i == 3
    break
  end
  p [i, lang]
end

print "\nnextの例:\n"
i = 0
["Perl", "Python", "Ruby", "Scheme"].each do |lang|
  i += 1
  if i == 3
    next
  end
  p [i, lang]
end

print "\nredoの例:\n"
i = 0
["Perl", "Python", "Ruby", "Scheme"].each do |lang|
  i += 1
  if i == 3
    redo
  end
  p [i, lang]
end
