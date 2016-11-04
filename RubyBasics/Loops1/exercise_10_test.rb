require 'minitest/autorun'
require 'minitest/pride'

class Exercise10Test < Minitest::Test
  def test_greet_your_friends
    friends = %w(Sarah John Hannah Dave)
    assert_equal "Hello, #{friends[0]}!", "Hello, Sarah!"
    for friend in friends
      puts "Hello, #{friend}!"
    end
  end
end