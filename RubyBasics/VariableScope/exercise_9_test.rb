require 'minitest/autorun'
require 'minitest/pride'

class Exercise9Test < Minitest::Test
  
  def test_local_variable_block_scope
    a = 7
    array = [1, 2, 3]

    array.each do |a|
      a += 1
    end

    assert_equal a, 3

  end

end