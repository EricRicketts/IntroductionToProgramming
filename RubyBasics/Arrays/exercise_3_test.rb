require 'minitest/autorun'
require 'minitest/pride'

class Exercise3Test < Minitest::Test
  
  def test_remove_lizard
    pets = ['cat', 'dog', 'fish', 'lizard']
    my_pets = pets[2..3]
    my_pets.delete("lizard")
    str = "I have a pet #{my_pets.first}."
    assert_equal('I have a pet fish.', str)
  end

end