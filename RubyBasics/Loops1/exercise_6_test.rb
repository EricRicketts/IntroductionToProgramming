require 'minitest/autorun'
require 'minitest/pride'

class Exercise6Test < Minitest::Test

  def test_random_numbers_loop
    random_array = 5.times.map { rand(99) }
    assert_equal random_array.length, 5
    random_array.each do |random_number|
      assert(random_number >= 1 && random_number <= 99)
    end
    while !random_array.empty?
      puts random_array.shift
    end
  end
end