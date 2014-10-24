# coding: UTF-8
class Point

  attr_accessor :x, :y

  def initialize(x, y)
    raise TypeError, 'Argumentos numéricos esperados' unless (x.is_a? Numeric) && (y.is_a? Numeric)
    @x, @y = x, y
  end

  def +(other)
    Point.new(@x + other.x, @y + other.y)
  end

  def -(other)
    Point.new(@x - other.x, @y - other.y)
  end

  def *(number)
    Point.new(@x * number, @y * number)
  end

  def -@
    Point.new(@x * -1, @y * -1)
  end

  def ==(other)
    (@x == other.x) && (@y == other.y)
  end

  def to_s
    "<x=#{@x}, y=#{@y}>"
  end

  def tst
    "Prueba rápida"
  end

end
