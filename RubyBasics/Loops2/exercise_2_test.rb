require 'minitest/autorun'
require 'minitest/pride'
# capture random numbers > 10
class CatchTheNumberExercise < Minitest::Test

  def test_catch_the_number
    ary = []
    loop do
      number = rand(100)
      number > 10 ? ary.push(number) : break
    end
    if !ary.empty?
      assert(ary.all? { |n| n > 10 })
    else
      assert ary.empty?
    end
  end

end
