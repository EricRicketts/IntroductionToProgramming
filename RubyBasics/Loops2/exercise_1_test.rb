require 'minitest/autorun'
require 'minitest/pride'

# even or odd test with loop
class EvenOrOddTest < Minitest::Test

  def test_even_or_odd
    count = 1
    ary = []
    loop do
      count.odd? ? ary.push('odd') : ary.push('even')
      count += 1
      break if count > 5
    end
    assert_equal ary, %w(odd even odd even odd)
  end
end
