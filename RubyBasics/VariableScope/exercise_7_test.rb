require 'minitest/autorun'
require 'minitest/pride'

class Exercise7Test < Minitest::Test
  
  def test_local_variable_block_scope
    a = 7
    array = [1, 2, 3]

    array.each do |element|
      a = element
    end

    assert_equal a, 3

  end

end