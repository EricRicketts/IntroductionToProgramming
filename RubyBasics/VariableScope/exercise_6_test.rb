require 'minitest/autorun'
require 'minitest/pride'

class Exercise6Test < Minitest::Test

  class GenerateError
    
    def my_value(b)
      b = a + a 
    raise NoMethodError, "a is not defined in this method"
    rescue NoMethodError => e
      e.message
    end

  end

  def test_method_parameter_scope
    a = 7
    gen_error = GenerateError.new()
    err = assert_raises NoMethodError.new() { gen_error.my_value(a) }
    assert_match /undefined local variable/, err.message  
  end
  
end