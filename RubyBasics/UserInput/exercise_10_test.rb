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

    def opposites_attract
      first_number = 1
      second_number = -1
      loop do
        puts "Please enter a positive or negative integer:"
        first_number = gets.chomp.strip
        unless valid_number?(first_number)
          puts "Invalid input.  Only non-zero integers are allowed."
          next
        end
        loop do
          puts "Please enter a positive or negative integer:"
          second_number = gets.chomp.strip   
          unless valid_number?(second_number)
            puts "Invalid input.  Only non-zero integers are allowed."
            next
          end
          break
        end
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
end