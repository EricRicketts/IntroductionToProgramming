require 'minitest/autorun'
require 'minitest/pride'

class Exercise5Test < Minitest::Test
  
  def setup
    
    def meal
      'Dinner'
      puts 'Dinner'
    end

  end
  def test_meal
    assert_output(/\ADinner\n#{nil}\z/) { print meal }
  end
# with print the output is:
# Dinner
# nil
# puts will hide the actual output of nil, just printing a \n in the process
# in contrast to puts, print will actually show nil on the command line
end