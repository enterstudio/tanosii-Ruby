# 8.4

module MyModule
  # 共通してていきょうしたいメソッドなど
end

class MyClass1
  include MyModule
  # MyClass1に固有のメソッドなど
end

class MyClass2
  include MyModule
  # MyClass2に固有のメソッドなど
end

