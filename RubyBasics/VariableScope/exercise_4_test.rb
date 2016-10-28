require 'minitest/autorun'
require 'minitest/pride'

class Exercise4Test < Minitest::Test

  def my_value(b)
    b[2] = '-' 
  end

  def my_value_more_detail(b)
    b[2] = '-'
    b = 'another string'  
  end

  def test_method_parameter_scope
    a = "Xyzzy"
    assert_equal my_value(a), '-'
    assert_equal a, "Xy-zy"  
  end
 
   def test_method_parameter_scope_more_detail
    a = "Xyzzy"
    assert_equal my_value_more_detail(a), 'another string'
    assert_equal a, "Xy-zy"  
  end

  def test_local_variable_object_ids
    a = "Xyzzy"
    b = a
    assert_equal a.object_id, b.object_id
    b[2] = '-'
    assert_equal a.object_id, b.object_id
    assert_equal a, "Xy-zy"
    refute_equal a[0].object_id, b[0].object_id
  end

end