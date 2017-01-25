require 'minitest/autorun'
require 'minitest/pride'

class Exercise7Test < Minitest::Test
  def test_stop_counting
    ary = []
    5.times do |index|
      ary.push(index)
      break if index == 2
    end
    assert_equal [0, 1, 2], ary
  end
end