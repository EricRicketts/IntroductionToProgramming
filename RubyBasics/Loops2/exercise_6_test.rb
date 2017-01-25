require 'minitest/autorun'
require 'minitest/pride'

class Exercise6Test < Minitest::Test
  def test_empty_the_array
    names = %w(Sally Joe Lisa Henry)
    captured_names = []
    loop do
      captured_names.push(names.pop)
      break if names.empty?
    end
    assert_equal ['Henry', 'Lisa', 'Joe', 'Sally'], captured_names
  end
end