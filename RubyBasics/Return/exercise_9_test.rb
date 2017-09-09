require 'minitest/autorun'
require 'minitest/pride'

class Exercise7Test < Minitest::Test
  
  def setup
    
    def count_sheep
      5.times do |sheep|
        puts sheep
        if sheep >= 2
          return
        end
      end
    end

  end

  def test_count_sheep
    assert_output(/\A0\n1\n2\n#{nil}\z/) { print count_sheep }
  end

end