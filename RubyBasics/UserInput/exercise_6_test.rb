require 'minitest/autorun'
require 'minitest/pride'

class Exercise6Test < Minitest::Test

  PASSWORD = "Corsair"

  def setup

    def password
      loop do
        puts "Please enter your password:"
        user_input = gets.chomp.strip
        break if user_input == PASSWORD
        puts "Invalid password!"
      end 
      puts "Welcome!"         
    end  

  end

  def teardown
    $stdin.rewind
    $stdin = STDIN
  end

  def test_valid_password
    $stdin = StringIO.new("Corsair\n")
    assert_output(/Welcome!/) { password }
  end

  def test_invalid_password
    $stdin = StringIO.new("Hellcat\nCorsair\n")    
    assert_output(/Invalid password!/) { password }
  end

end