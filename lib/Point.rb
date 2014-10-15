# coding: UTF-8
class Point

  attr_accessor :x, :y

  def initialize(x, y)
    raise TypeError, 'Argumentos numéricos esperados' unless (x.is_a? Numeric) && (y.is_a? Numeric)
    @x, @y = x, y
  end

end
