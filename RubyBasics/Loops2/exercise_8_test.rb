require 'minitest/autorun'
require 'minitest/pride'

class Exercise8Test < Minitest::Test
  def test_only_even
    number = 0
    ary = []
    until number >= 10
      number += 1
      ary.push(number) if number.even?
    end
    assert_equal [2, 4, 6, 8, 10], ary
  end
end