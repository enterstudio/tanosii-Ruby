# 8.2

class HelloWorld
  Version = "1.0"

  def initialize(myname = "Ruby")
    @name = myname
  end

  def hello
    print "Hello, world. I am ", @name, ".\n"
  end

  # アクセスメソッドを定義する
  # これは以下のnameメソッドと=メソッドを定義してくれる
  attr_accessor :name

=begin
  def name
    return @name
  end

  def name=(value)
    @name = value
  end
=end

  # クラスメソッド
  def self.hello(name)
    print name, " said hello.\n"
  end

  # クラスメソッドをまとめて記述する方法
  class << HelloWorld
    def hello2(name)
      print name, " said hello.\n"
    end
  end


end

bob = HelloWorld.new("Bob")
alice = HelloWorld.new("alice")
ruby = HelloWorld.new

bob.hello
alice.hello
ruby.hello

bob.name = "Bob Jr"
bob.hello

HelloWorld.hello("Class method")
HelloWorld.hello2("Class method <<")

# 定数を外部から参照する
p HelloWorld::Version
