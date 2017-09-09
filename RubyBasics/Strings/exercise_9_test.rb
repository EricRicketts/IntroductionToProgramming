require 'minitest/autorun'
require 'minitest/pride'

class Exercise9Test < Minitest::Test
  
  def test_pluralize
    str = 'car human elephant airplane'
    str_ary = []
    str.split(' ').each {|word| str_ary.push(word + "s")}
    assert_equal(%w(cars humans elephants airplanes), str_ary)
  end

end