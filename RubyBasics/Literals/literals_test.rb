require 'minitest/autorun'
require 'minitest/pride'

class BooleanTest < Minitest::Test

  def test_true_and_false
    refute_equal true, false    
  end

  def test_false_and_nil
    refute_equal false, nil
  end

  def test_nil_in_boolean_context
    x = nil
    refute x
  end

end

class NumbersTest < Minitest::Test

  def test_underscores
    assert_equal 1001, 1_001
  end

  def test_hex
    assert_equal 0x2f, 47
  end

  def test_binary
    assert_equal 0B1100101, 101
  end

end

class StringTest < Minitest::Test

  def test_double_quote_and_single_quote_strings
    assert_equal "this is a double \s\s", 'this is a double   '  
  end

  def test_variable_interpolation
    assert_equal "#{4 + 4}", "8"
  end

  def test_concatentation
    assert_equal %q(a) "b" 'c', 'abc'
  end

end


