require 'minitest/autorun'
require 'minitest/pride'

class ControlExpressionsTest < Minitest::Test

  def test_basic_if_else
    a = 1
    b = -1

    if a == 0
      b = a
    elsif a == 1
      b = a                    
    else
      b = a 
    end

    assert_equal b, 1
  end

  def test_if_with_assignment
    b = 0
    if a = 1
      b = a    
    else
      b = -1  
    end

    assert_equal b, 1
    assert_equal a, 1

    if a = nil
      b = 0
    else
      b = -1
    end

    assert_equal b, -1
  end

  def test_variable_scope_within_if_block
    a = 1
    if a == 1
      b = 0
    else
     b = -1 
    end

    assert_equal b, 0
  end

  def test_variable_assignment_witin_if_block
    a = 2
    if a == 1
      b = a
      c = 3
    else
      b = 5  
    end

    assert_nil c
  end
  
end