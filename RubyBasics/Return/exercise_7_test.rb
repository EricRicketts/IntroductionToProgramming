require 'minitest/autorun'
require 'minitest/pride'

class Exercise7Test < Minitest::Test
  
  def setup
    
    def count_sheep
      5.times do |sheep|
        puts sheep
      end
    end

    def capture_count_sheep(ary=[])
      5.times do |n|
        ary.push(n)
      end 
      return ary   
    end

  end

  def test_count_sheep
    assert_output(/\A0\n1\n2\n3\n4\n5\n\z/) { puts count_sheep }
  end
# the number 5 is included in the output because the times method
# exits out of the loop and returns the initial integer
  def test_capture_count_sheep
    test_ary = capture_count_sheep
    assert_equal([0, 1, 2, 3, 4], test_ary)
  end
# we see inside the loop that n iterates from 0 to 4 so we cannot
# capture the return value from #times inside the loop
end