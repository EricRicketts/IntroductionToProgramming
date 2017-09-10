require 'minitest/autorun'
require 'minitest/pride'

class Exercise5Test < Minitest::Test
  
  def setup
    @colors = ['red', 'yellow', 'purple', 'green']
    @prefix = "I'm the color "
  end

  def test_colors
    expected = "I'm the color red!\nI'm the color yellow!\nI'm the color purple!\nI'm the color green!\n"
    assert_output(/\A#{expected}\z/) { @colors.each {|color| puts (@prefix + color + "!")} }    
  end

end