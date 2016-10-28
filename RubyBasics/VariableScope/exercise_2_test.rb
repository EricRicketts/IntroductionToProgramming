require 'minitest/autorun'
require 'minitest/pride'

class Exercise2Test < Minitest::Test

  def my_value(a)
    a += 10 
  end

  def test_method_parameter_scope
    a = 7
    assert_equal my_value(a), 17
    assert_equal a, 7  
  end
  
end