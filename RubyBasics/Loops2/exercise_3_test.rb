require 'minitest/autorun'
require 'minitest/pride'

class Exercise3Test < Minitest::Test

  def test_conditional_loop
    ary = []
    loop do
      process_the_loop = [true, false].sample
      if process_the_loop
        ary.push("The loop was processed!")
        break
      else
        ary.push("The loop wasn't processed!")
      end
    end

    assert_equal 1, ary.select { |string| string == "The loop was processed!"}.length
  end
end