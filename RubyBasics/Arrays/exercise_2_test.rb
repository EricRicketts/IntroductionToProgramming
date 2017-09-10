require 'minitest/autorun'
require 'minitest/pride'

class Exercise1Test < Minitest::Test
  
  def test_select_fish
    pets = ['cat', 'dog', 'fish', 'lizard']
    my_pets = pets[2..3]
    str = "I have a pet #{my_pets.first} and a pet #{my_pets.last}."
    assert_equal('I have a pet fish and a pet lizard.', str)
  end

end