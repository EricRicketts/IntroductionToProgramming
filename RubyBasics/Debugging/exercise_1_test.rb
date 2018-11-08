require 'minitest/autorun'
require 'minitest/pride'
require 'pry-byebug'

class Exercise1Test < Minitest::Test

  def find_first_nonzero_among(numbers)
    numbers.each do |n|
      return n if n.nonzero?
    end
  end

  def find_first_nonzero_among_fixed(*numbers)
    numbers.each do |n|
      return n if n.nonzero?
    end
  end

  def test_one
    # method is expecting 1 argument but 6 were given, to fix this
    # the method declaration should be first_first_nonzero_among(*numbers)
    assert_raises(ArgumentError) { find_first_nonzero_among(0, 0, 1, 0, 2, 0) }
  end

  def test_two
    # problem here is calling #each on an integer
    assert_raises(NoMethodError) { find_first_nonzero_among(1) }
  end

  def test_three
    assert_equal(1, find_first_nonzero_among_fixed(0, 0, 1, 0, 2, 0))
  end

  def test_four
    assert_equal(1, find_first_nonzero_among_fixed(1))
  end
end