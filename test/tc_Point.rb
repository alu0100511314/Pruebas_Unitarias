require 'lib/Point'
require 'test/unit'

class TestPoint < Test::Unit::TestCase

  def test_constructor
    p = Point.new(2.1, 1.2)
    assert(p.x == 2.1)
    assert_in_delta(p.y, 1.2, 1e-6)    
  end
  
  def test_init
    assert_raise (TypeError) do
      p = Point.new('a', 'b')
    end
  end

end
