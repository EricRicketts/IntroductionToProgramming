require 'minitest/autorun'
require 'minitest/pride'

class Exercise5Test < Minitest::Test

  def setup

    def dog(name)
      "The dog's name is #{name}."        
    end

    def cat(name)
      "The cat's name is #{name}."
    end

  end

  def test_dog_name
    assert_equal("The dog's name is Spot.", dog('Spot'))
  end

  def test_cat_name
    assert_equal("The cat's name is Ginger.", cat('Ginger'))
  end

end