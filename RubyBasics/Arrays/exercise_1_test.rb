require 'minitest/autorun'
require 'minitest/pride'

class Exercise1Test < Minitest::Test
  
  def test_select_fish
    pets = ['cat', 'dog', 'fish', 'lizard']
    my_pet = pets.select {|pet| pet == 'fish'}.first
    assert_equal('fish', my_pet)
  end

end