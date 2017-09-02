require 'minitest/autorun'
require 'minitest/pride'

class Exercise5Test < Minitest::Test
  
  def setup
    
    def launch_school_printer
      output = "Launch School is the best!\n"
      number_of_repeats = 3
      loop do
        puts "How many output lines do you want?  Enter a number >= 3:"
        number_of_repeats = gets.chomp.strip.to_i
        break if number_of_repeats >= 3
      end
      puts output * number_of_repeats
    end

  end

  def teardown
    $stdin.rewind
    $stdin = STDIN
  end

  def test_minimum_repeats
    expected_output = "Launch School is the best!\n" * 3
    $stdin = StringIO.new("3\n")
    assert_output(/#{expected_output}/) { launch_school_printer }
  end

end
