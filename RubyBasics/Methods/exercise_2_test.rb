require 'minitest/autorun'
require 'minitest/pride'

class Exercise2Test < Minitest::Test
  
  def setup
    
    def hello
      "Hello"
    end

    def world
      "World"
    end

    def greet
      hello + " " + world
    end

  end

  def test_greet
    assert_equal(greet, "Hello World")
  end

end