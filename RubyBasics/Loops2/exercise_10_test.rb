require 'minitest/autorun'
require 'minitest/pride'

class Exercise10Test < Minitest::Test
  def test_greeting
    def greeting
      'Hello!'
    end

    number_of_greetings = 2
    counter = 0
    ary = []
    while counter < number_of_greetings
      ary.push(greeting)
      counter += 1
    end

    assert_equal ['Hello!', 'Hello!'], ary
  end
end