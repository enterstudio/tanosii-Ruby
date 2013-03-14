def copy(from, to)
  open(from) do |input|
    open(to, "w") do |output|
      output.write(input.read)
    end
  end
end
copy("from.txt", "to.txt")
