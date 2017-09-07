require 'minitest/autorun'
require 'minitest/pride'

class Exercise10Test < Minitest::Test
  
  def setup
    
    def print_me
      "I'm printing the return value!"
    end

  end

  def test_print_me
    assert_match(/\AI'm printing the return value!\z/, print_me)
  end

end