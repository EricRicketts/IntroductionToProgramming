require 'minitest/autorun'
require 'minitest/pride'

class Exercise10Test < Minitest::Test
  
  def test_array_equal
    array1 = [1, 5, 9]
    array2 = [1, 9, 5]
    refute(array1 == array2)
  end

end