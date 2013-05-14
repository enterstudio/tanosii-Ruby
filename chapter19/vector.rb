class Vector
  attr_reader :x, :y
  def initialize(x=0, y=0)
    @x, @y = x, y
  end

  def inspect # 表示用
    "(#{@x}, #{@y})"
  end

  def +(other)
    Vector.new(@x + other.x, @y + other.y) # x, yのそれぞれを足す
  end

  def -(other)
    Vector.new(@x - other.y, @y - other.y) # x, yのそれぞれを引く
  end

  def +@
    self.dup
  end

  def -@
    Vector.new(-@x, -@y)
  end
  
  def ~@
    Vector.new(-@y, -@x)
  end

  def [](idx)
    case idx
    when 0
      @x
    when 1
      @y
    else
      raise ArgumentError, "out of range `#{idx}'"
    end
  end

  def []=(idx, val)
    case idx
    when 0
      @x
    when 1
      @y
    else
      raise ArgumentError, "out of range `#{idx}'"
    end
  end
end

vec0 = Vector.new(3, 6)
vec1 = Vector.new(1, 8)
p vec0
p vec1
p vec0 + vec1
p vec0 - vec1
vec = Vector.new(3, 6)
p(-vec)
p(+vec)
p(~vec)

p vec[0]
p vec[1] = 2
p vec[1]
p vec[2]
