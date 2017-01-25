require 'minitest/autorun'
require 'minitest/pride'

class Exercise5Test < Minitest::Test
  def test_insert_numbers
    numbers = []
    $stdin = StringIO.new("3\n5\n7\n9\n11\n")
    out = capture_io do
      loop do
        puts "Enter any number:"
        input = gets.chomp.to_i
        numbers.push(input)
        break if numbers.length == 5
      end
    end
      assert_equal [3, 5, 7, 9, 11], numbers
  end
end