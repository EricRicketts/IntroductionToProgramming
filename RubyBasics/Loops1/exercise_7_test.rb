require 'minitest/autorun'
require 'minitest/pride'

class Exercise7Test < Minitest::Test
  def test_count_up
    count = 1
    count_ary = []
    until count > 10
      count_ary.push(count)
      puts count
      count +=1
    end
    assert_equal count_ary, (1..10).to_a
  end
end