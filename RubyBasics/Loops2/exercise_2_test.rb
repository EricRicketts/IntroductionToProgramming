require 'minitest/autorun'
require 'minitest/pride'
# capture random numbers > 10
class CatchTheNumberExercise < Minitest::Test
  def test_catch_the_number
    ary = []
    loop do
      number = rand(100)
      ary.push(number)
      break if number.between?(0, 10)
    end
    assert ary.select { |n| n.between?(0, 10) }.size == 1
  end
end
