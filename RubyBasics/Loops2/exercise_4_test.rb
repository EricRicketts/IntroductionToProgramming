require 'minitest/autorun'
require 'minitest/pride'

class Exercise4Test < Minitest::Test
  def test_get_the_sum
    $stdin = StringIO.new("5\n4\n")
    out = capture_io do
      loop do
        puts "What does 2 + 2 equal?"
        answer = gets.chomp.to_i
        if answer == 4
          puts "That's correct!"
          break
        else
          puts "Wrong answer.  Try again!"
        end
      end
    end
      loop_response = out[0]
      matched_response = /That's correct!/.match(loop_response)
      assert_equal "That's correct!", matched_response[0]
  end
end