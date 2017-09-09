require 'minitest/autorun'
require 'minitest/pride'

class Exercise1Test < Minitest::Test
	
  def test_empty_string
    empty_string = String.new()
    assert(empty_string.empty?)
  end

end