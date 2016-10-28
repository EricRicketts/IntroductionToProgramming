require 'minitest/autorun'
require 'minitest/pride'

class Exercise10Test < Minitest::Test

  def my_value(ary)
    ary.each do |b|
      a += b
    end
  end 

  def test_local_variable_block_scope
    a = 7
    array = [1, 2, 3]

    assert_equal my_value(array), [1, 2, 3]
    assert_equal a, 7
  end

end