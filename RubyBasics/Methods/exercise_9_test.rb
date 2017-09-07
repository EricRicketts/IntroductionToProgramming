require 'minitest/autorun'
require 'minitest/pride'

class Exercise9Test < Minitest::Test
  
  def setup

    def print_me
      puts "I'm printing within the method!"
    end

  end

  def test_print_me
    assert_output(/\AI'm printing within the method!\n\z/) { print_me }
  end

end