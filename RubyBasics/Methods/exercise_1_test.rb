require 'minitest/autorun'
require 'minitest/pride'

class Exercise1Test < Minitest::Test

  def setup
    
    def hello
      "Hello"
    end

    def world
      "World"
    end

  end

  def test_method
    assert_equal(hello + " " + world, "Hello World")
  end
  
end