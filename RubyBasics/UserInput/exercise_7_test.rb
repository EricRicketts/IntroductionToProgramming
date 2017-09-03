require 'minitest/autorun'
require 'minitest/pride'

class Exercise6Test < Minitest::Test

  PASSWORD = "Corsair"
  NAME = "Boyington"

  def setup

    def user_name_and_password
      loop do
        puts "Please enter your name:"
        user_name = gets.chomp.strip
        puts "Please enter your password:"
        user_password = gets.chomp.strip
        break if user_name == NAME && user_password == PASSWORD
        puts "Authorization failed!"
      end 
      puts "Welcome!"         
    end  

  end

  def teardown
    $stdin.rewind
    $stdin = STDIN
  end

  def test_valid_input
    $stdin = StringIO.new("Boyington\nCorsair\n")
    assert_output(/Welcome!/) { user_name_and_password }
  end

  def test_invalid_input
    $stdin = StringIO.new("  Pappy \n Hellcat   \nBoyington\nCorsair\n")    
    assert_output(/Authorization failed!\n.+\n.+\nWelcome!/) { user_name_and_password }
  end

end