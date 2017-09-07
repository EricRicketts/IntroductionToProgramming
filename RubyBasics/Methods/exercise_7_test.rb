require 'minitest/autorun'
require 'minitest/pride'

class Exercise7Test < Minitest::Test
  
  def setup
    
    def add(num1, num2)
      num1 + num2
    end

    def multiply(num1, num2)
      num1 * num2
    end

  end


    def test_add
      assert(add(2, 2) == 4)
      assert(add(5, 4) == 9)
    end

    def test_multiply
      assert(multiply(add(2, 2), add(5, 4)) == 36)
    end

end