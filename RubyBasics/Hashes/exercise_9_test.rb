require 'minitest/autorun'
require 'minitest/pride'

class Exercise9Test < Minitest::Test

  def setup
    @vehicles = {
      car: {
        type: 'sedan',
        color: 'blue',
        year: 2003
      },
      truck: {
        type: 'pickup',
        color: 'red',
        year: 1998
      }
    }
  end

  def test_keys_for_embedded_hash
    keys = @vehicles.keys.sort
    assert_equal([:car, :truck], keys)    
  end
end

