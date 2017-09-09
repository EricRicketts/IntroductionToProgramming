require 'minitest/autorun'
require 'minitest/pride'

class Exercise4Test < Minitest::Test
  
  def setup
    
    def ternary(boolean)
      boolean ? "I'm true!" : "I'm false!"
    end

  end

  def test_ternary_true
    assert_equal("I'm true!", ternary(true))
  end

  def test_ternary_false
    assert_equal("I'm false!", ternary(false))
  end

end