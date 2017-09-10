require 'minitest/autorun'
require 'minitest/pride'

class Exercise5Test < Minitest::Test
  
  def setup
    @numbers = {
      high:   100,
      medium: 50,
      low:    10
    }
  end

  def test_iterate_through_hash
    expected = "A high number is 100.\nA medium number is 50.\nA low number is 10.\n"
    assert_output(/\A#{expected}\z/) { @numbers.each { |key, value| puts "A #{key.to_s} number is #{value}."} }    
  end

end