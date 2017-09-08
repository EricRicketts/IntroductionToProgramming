require 'minitest/autorun'
require 'minitest/pride'

class Exercise4Test < Minitest::Test
  
  def setup
    
    def meal
      puts 'Dinner'
      return 'Breakfast'
    end

  end

  def test_meal
    assert_output(/^Dinner\nBreakfast\n$/) { puts meal }
  end
# first puts 'Dinner' is executed with Dinner\n and then puts is called on the output of meal which is Breakfast\n
end 