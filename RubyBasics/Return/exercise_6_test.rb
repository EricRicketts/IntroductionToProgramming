require 'minitest/autorun'
require 'minitest/pride'

class Exercise6Test < Minitest::Test
  
  def setup
    
    def meal
      return 'Breakfast'
      'Dinner'
      puts 'Dinner'
    end

  end

  def test_meal
    assert_output(/\ABreakfast\n\z/) { puts meal }
  end

end