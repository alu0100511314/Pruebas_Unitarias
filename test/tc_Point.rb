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

  def test_operaciones
    p = Point.new(2.1, 1.2)
    q = p + p
    assert_equal(q.x, 4.2, 'Fallo en la suma')
    q = p - p
    assert_equal(q.x, 0, 'Fallo en la resta')
    q = p * 2
    assert_equal(q.x, 4.2, 'Fallo en producto por escalar')
    q = -p
    assert_equal(q.x, -2.1, 'Fallo en cambio de signo')
    q = Point.new(2.1, 1.2)
    assert_equal(p.x, q.x, 'Fallo en operador igual')
  end

end
