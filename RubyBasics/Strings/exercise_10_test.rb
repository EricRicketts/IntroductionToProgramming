require 'minitest/autorun'
require 'minitest/pride'

class Exercise10Test < Minitest::Test

  def setup
    @str = 'blue pink yellow orange'
  end
  
  def test_include_yellow
    assert(@str.include?('yellow'))
  end

  def test_include_purple
    refute(@str.include?('purple'))
  end

end