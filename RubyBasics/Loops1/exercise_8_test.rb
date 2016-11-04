require 'minitest/autorun'
require 'minitest/pride'

class Exercise8Test < Minitest::Test

  def test_print_until
    ary = [7, 9, 13, 25, 18]
    until ary.empty?
      puts ary.shift
    end
    assert_equal ary.size, 0
  end

end