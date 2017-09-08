require 'minitest/autorun'
require 'minitest/pride'

class Exercise1Test < Minitest::Test
  
  def setup
    
    def meal
      'Dinner'
      puts 'Dinner'
    end

  end

  def test_meal
    assert_output(/^Dinner\n$/) { print meal }
  end

end