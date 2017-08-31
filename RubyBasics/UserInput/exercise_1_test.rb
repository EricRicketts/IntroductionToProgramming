require 'minitest/autorun'
require 'minitest/pride'

class ExerciseOne < Minitest::Test
  def setup
    def repeat_after_me
      puts ">> Type anything you want:"
      puts gets.chomp
    end
  end

  def test_repeat_after_me
    $stdin = StringIO.new("my input string\n")
    assert_output(/\A>> Type anything you want:\nmy input string\n\z/) { repeat_after_me } 
    $stdin.rewind
    $stdin = STDIN   
  end

end

  