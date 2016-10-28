require 'minitest/autorun'
require 'minitest/pride'

class Exercise5Test < Minitest::Test

  def my_value(b)
    b = 'yzzyX' 
  end

  def test_method_parameter_scope
    a = 'Xyzzy'
    assert_equal my_value(a), 'yzzyX'
    assert_equal a, 'Xyzzy' 
  end
  
end