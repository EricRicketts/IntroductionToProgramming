require 'minitest/autorun'
require 'minitest/pride'

class Exercise4Test < Minitest::Test
  
  def setup
    @pets = ['cat', 'dog', 'fish', 'lizard']
    @my_pets = @pets[2..3]
    @my_pets.pop
  end

  def test_one_is_not_enough
    @my_pets.push(@pets[1])
    expected = "I have a pet fish and a pet dog!"
    assert_equal(expected, "I have a pet #{@my_pets.first} and a pet #{@my_pets.last}!")
  end

end
