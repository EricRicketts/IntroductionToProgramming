require 'minitest/autorun'
require 'minitest/pride'

class Exercise3Test < Minitest::Test

  def my_value(b)
    a = b 
  end

  def test_method_parameter_scope
    a = 7
    assert_equal my_value(a + 5), 12
    assert_equal a, 7  
  end
  
end