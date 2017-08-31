require 'minitest/autorun'
require 'minitest/pride'

class ExerciseOne < Minitest::Test
  def setup
    def repeat_after_me
      puts gets.chomp
    end
  end

  def test_repeat_after_me
    $stdin = StringIO.new("my input string\n")
    assert_output(/my input string/) { repeat_after_me } 
    $stdin.rewind
    $stdin = STDIN   
  end

end

  