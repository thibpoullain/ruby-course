class Point
  attr_accessor :x, :y

  def initialize(x = 0, y = 0)
    @x, @y = x, y
  end

  def move!(a, b)
    @x += a
    @y += b
  end

  def move_to!(a, b)
    @x = a
    @y = b
  end

  def pos
    [@x, @y]
  end

  def +(point)
    return unless point.is_a? Point
    Point.new((@x + point.x), (@y + point.y))
  end

  def magic?
    @x == 42 && @y == 42
  end

  def self.random(count, xmin, ymin, xmax, ymax)
    result = []
    count.times do
      result << Point.new(rand(xmin..xmax), rand(ymin..ymax))
    end
    result
  end

  protected

  def move_to_magic_position!
    move_to!(42, 42)
  end
end

class ColouredPoint < Point

  attr_accessor :color

  def initialize(x = 0, y = 0, color = 'FFFFFF')
    @x, @y = x, y
    @color = color
  end

  def red
    @color.split('').first(2).join('')
  end

  def green
    @color.split('').pop(4).first(2).join('')
  end

  def blue
    @color.split('').last(2).join('')
  end
end