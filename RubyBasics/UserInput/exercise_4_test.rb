require 'minitest/autorun'
require 'minitest/pride'

class Exercise3Test < Minitest::Test
  
  def setup

    def something
      output = %w(something help conversation drill plateau up down left right sea sky).sample
      error = "Invalid input!  Please enter y or n or some form of yes or no irrespective of character case."
      puts "Do you want me to print something? (y/n)"
      loop do
          user_response = gets.chomp.strip
          break if /\A[yYeEsS]+\z/.match(user_response)
          if /\A[nNoO]+\z/.match(user_response)
            output = ""
            break
          else
            puts error
          end
      end
      puts output
    end

  end

  def teardown
    $stdin.rewind
    $stdin = STDIN
  end

  def test_valid_input_just_y
    $stdin = StringIO.new("y\n")
    possible_matches = "something|help|conversation|drill|plateau|up|down|left|right|sea|sky"
    assert_output(/\ADo you want me to print something\? \(y\/n\)\n#{possible_matches}\n/) { something }
  end

  def test_valid_input_yes
    $stdin = StringIO.new("  yES  \n")
    possible_matches = "something|help|conversation|drill|plateau|up|down|left|right|sea|sky"
    assert_output(/\ADo you want me to print something\? \(y\/n\)\n#{possible_matches}\n/) { something }
  end

  def test_valid_input_just_n
    $stdin = StringIO.new("n\n")
    assert_output(/\ADo you want me to print something\? \(y\/n\)\n\n/) { something }    
  end

  def test_valid_input_other_than_n
    $stdin = StringIO.new("  No  \n")
    assert_output(/\ADo you want me to print something\? \(y\/n\)\n\n/) { something }    
  end

end