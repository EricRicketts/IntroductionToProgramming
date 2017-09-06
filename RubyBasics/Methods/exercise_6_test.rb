require 'minitest/autorun'
require 'minitest/pride'

class Exercise6Test < Minitest::Test
  
  def setup
    
    def assign_name(name='Bob')
      name
    end

  end

  def test_default
    assert_equal(assign_name, 'Bob')
  end

  def test_new_name
    assert_equal(assign_name('Kevin'), 'Kevin')
  end

end