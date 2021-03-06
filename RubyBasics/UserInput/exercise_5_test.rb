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
        puts "That\'s not enough lines\." if number_of_repeats < 3
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

  def test_less_than_minimum_repeats
    expected_output = "That\'s not enough lines\."
    $stdin = StringIO.new("2\n3\n")
    assert_output(/#{expected_output}/) { launch_school_printer }
  end

  def test_non_integer_input
    expected_output = "That\'s not enough lines\."
    $stdin = StringIO.new("n3u\n3\n")
    assert_output(/#{expected_output}/) { launch_school_printer }    
  end

  def test_greater_than_minimum_input
    expected_output = "Launch School is the best!\n" * 4
    $stdin = StringIO.new("4\n")
    assert_output(/#{expected_output}/) { launch_school_printer }    
  end

end
