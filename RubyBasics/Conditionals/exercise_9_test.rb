require 'minitest/autorun'
require 'minitest/pride'

class Exercise9Test < Minitest::Test
  
  def setup
    
    def cool_numbers(number)
      if number == 5
        "5 is a cool number!"
      else
        "Other numbers are cool too!"
      end
    end

  end

  def test_cool_number_five
    assert_equal("5 is a cool number!", cool_numbers(5))
  end

  def test_cool_number_seven
    assert_equal("Other numbers are cool too!", cool_numbers(7))
  end

end