require 'minitest/autorun'
require 'minitest/pride'

class Exercise1Test < Minitest::Test

  def my_value(b)
    b += 10 
  end

  def test_method_parameter_scope
    a = 7
    assert_equal my_value(a), 17
    assert_equal a, 7  
  end
  
end