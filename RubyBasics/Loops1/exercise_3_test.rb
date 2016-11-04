require 'minitest/autorun'
require 'minitest/pride'

class Exercise3Test < Minitest::Test
  
  def test_control_the_loop
    iterations = 1

    loop do
      puts "Number of iterations = #{iterations}"
      iterations += 1
      break iterations if iterations > 5
    end

    assert_equal iterations, 6    
  end

end