require 'minitest/autorun'
require 'minitest/pride'

class Exercise5Test < Minitest::Test
  
  def setup
    
    def truthy_number(number)
      if number
        "My favorite number is #{number}."
      else
        "I do not have a favorite number."    
      end
    end

  end

  def test_favorite_number
    assert_equal("My favorite number is 7.", truthy_number(7))
  end

  def test_no_favorite_number
    assert_equal("I do not have a favorite number.", truthy_number(nil))
  end

end