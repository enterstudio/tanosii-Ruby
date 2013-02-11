# 8.5

module HelloModule
  Version = "1.0"

  def hello(name)
    print "Hello, ", name, "\n"
  end

  module_function :hello # helloをモジュール関数として公開する
end

p HelloModule::Version
HelloModule.hello("Alice")

include HelloModule
p Version
hello("Alice Jr")
