require 'minitest/autorun'
require 'minitest/pride'

class Exercise8Test < Minitest::Test
  
  def test_local_variable_block_scope
    array = [1, 2, 3]

    array.each do |element|
      a = element
    end

    assert_nil a

  end

end