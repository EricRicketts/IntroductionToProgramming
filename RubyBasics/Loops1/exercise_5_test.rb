require 'minitest/autorun'
require 'minitest/pride'

class Exercise5Test < Minitest::Test

  def test_say_hello
    say_hello = true
    count = 1
    while say_hello
      puts 'Hello!'
      count += 1
      say_hello = false if count > 5
    end

    assert_equal count, 6
  end
  
end