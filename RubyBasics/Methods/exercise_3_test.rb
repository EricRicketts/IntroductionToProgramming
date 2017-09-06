require 'minitest/autorun'
require 'minitest/pride'

class Exercise3Test < Minitest::Test
  
  def setup
    
    def car(make, model)
      make + ' ' + model
    end

  end

  def test_car
    assert_equal(car('Toyota', 'Corolla'), 'Toyota Corolla')
  end

end