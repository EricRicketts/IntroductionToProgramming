require 'minitest/autorun'
require 'minitest/pride'

class Exercise9Test < Minitest::Test
  def test_first_to_five
    number_a = number_b = 0
    loop do
      number_a += rand(2)
      number_b += rand(2)
      next unless number_a == 5 || number_b == 5
      break
    end
    assert number_a == 5 || number_b == 5
  end
end