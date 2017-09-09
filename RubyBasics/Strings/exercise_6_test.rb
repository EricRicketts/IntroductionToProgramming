require 'minitest/autorun'
require 'minitest/pride'

class Exercise6Test < Minitest::Test
  
  def test_upcase
    state = 'tExAs'
    assert_equal('Texas', state.downcase.capitalize)
  end

end