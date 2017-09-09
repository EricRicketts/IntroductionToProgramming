require 'minitest/autorun'
require 'minitest/pride'

class Exercise2Test < Minitest::Test
  
  def test_quote_confusion
    str = "It's now 12 o'clock"
    assert_equal("It's now 12 o'clock", str)
  end

end