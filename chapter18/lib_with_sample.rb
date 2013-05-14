
class Foo
  def initialize
    print("file #{__FILE__}: #{__LINE__}\n")
    p __method__
    p __ENCODING__
    puts "foo!!"
  end
end

if __FILE__ == $0
  Foo.new
end
