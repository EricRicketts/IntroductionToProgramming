require 'minitest/autorun'
require 'minitest/pride'

class CallingMethodsTest < Minitest::Test
 
def test_default_arguments_in_the_middle
  def my_method(a, b=2, c=3, d)
    return [a, b, c, d]  
  end

  assert_equal(my_method(4, 5, 6), [4, 5, 3, 6])
end

end