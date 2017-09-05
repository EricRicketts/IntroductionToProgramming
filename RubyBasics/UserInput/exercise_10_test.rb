require 'minitest/autorun'
require 'minitest/pride'

class Exercise10Test < Minitest::Test

  def setup

    def valid_number?(number_string)
      number_string.to_i.to_s == number_string && number_string.to_i != 0
    end

    def same_sign?(number1, number2)
      number1 * number2 < 0
    end

    def get_valid_number
      loop do
        puts "Please enter a positive or negative integer:"
        number = gets.chomp.strip   
        return number if valid_number?(number)
        puts "Invalid input.  Only non-zero integers are allowed."
      end      
    end

    def opposites_attract
      first_number = 1
      second_number = -1
      loop do
        first_number = get_valid_number
        second_number = get_valid_number
        unless same_sign?(first_number.to_i, second_number.to_i)
          puts "Sorry. One integer must be positive, one must be negative."
          puts "Please start over."
          next
        end
        break
      end      
      sum = first_number.to_i + second_number.to_i
      puts "#{first_number} + #{second_number} = #{sum}"
    end

  end

  def teardown
    $stdin.rewind
    $stdin = STDIN
  end

  def test_valid_input
    $stdin = StringIO.new("8\n-5\n")
    assert_output(/8 \+ \-5 \= 3/) { opposites_attract }
  end

  def test_two_positive_numbers
    $stdin = StringIO.new("8\n4\n8\n-3\n")
    assert_output(/Please start over\./) { opposites_attract }
  end

  def test_two_negative_numbers
    $stdin = StringIO.new("-8\n-4\n-8\n3\n")
    assert_output(/Please start over\./) { opposites_attract }
  end

  def test_zero_input
    $stdin = StringIO.new("0\n4\n-8\n")
    assert_output(/Only non-zero integers are allowed\./) { opposites_attract }
  end

end