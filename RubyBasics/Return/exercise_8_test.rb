require 'minitest/autorun'
require 'minitest/pride'

class Exercise8Test < Minitest::Test
  
  def setup
    
    def count_sheep
      5.times do |sheep|
        puts sheep
      end
      10
    end

  end

  def test_count_sheep
    assert_output(/\A0\n1\n2\n3\n4\n10\n\z/) { puts count_sheep }
  end

end