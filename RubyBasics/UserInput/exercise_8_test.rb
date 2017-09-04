require 'minitest/autorun'
require 'minitest/pride'

class Exercise8Test < Minitest::Test

  def setup

    def valid_number?(number_string)
      number_string.to_i.to_s == number_string         
    end

    def check_the_numerator(numerator)      
      loop do
        puts "Please enter the numerator:"
        numerator = gets.chomp.strip
        break if valid_number?(numerator)
        puts "Invalid Input.  Only integers are allowed."
      end
    return numerator.to_i
   end

    def check_the_denominator(denominator)
      loop do
        puts "Please enter the denominator:"
        denominator = gets.chomp.strip 
        if denominator == "0"
          puts "Invalid Input.  A denominator of 0 is not allowed."
        else
          break if valid_number?(denominator)
          puts "Invalid Input.  Only integers are allowed." 
        end
      end
      return denominator.to_i      
    end

    def integer_division
      numerator = 1
      denominator = 1
      loop do
        numerator = check_the_numerator(numerator)
        denominator = check_the_denominator(denominator)
        break
      end
      puts "#{numerator} / #{denominator} is #{numerator/denominator}"
    end

  end

  def teardown
    $stdin.rewind
    $stdin = STDIN
  end

  def test_valid_input_perfect_division
    $stdin = StringIO.new("8\n4\n")
    assert_output(/8 \/ 4 is 2/) { integer_division }
  end

  def test_valid_input_non_perfect_division
    $stdin = StringIO.new("9\n4\n")
    assert_output(/9 \/ 4 is 2/) { integer_division }
  end

  def test_invalid_numerator
    $stdin = StringIO.new("abc\n8\n2\n")
    assert_output(/Invalid Input\.  Only integers are allowed\./) { integer_division }
  end

  def test_invalid_denominator
    $stdin = StringIO.new("8\nabc\n2\n")
    assert_output(/Invalid Input\.  Only integers are allowed\./) { integer_division }
  end

  def test_invalid_denominator_divide_by_zero
    $stdin = StringIO.new("8\n0\n2\n")
    assert_output(/Invalid Input\.  A denominator of 0 is not allowed\./) { integer_division }
  end

end

