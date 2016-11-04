require 'minitest/autorun'
require 'minitest/pride'

class Exercise2Test < Minitest::Test
  
  def test_break_out_of_nested_do_loops
    count = 0
    loop do
      puts 'This is the outer loop.'

      loop do
        puts 'This is the inner loop.'
        break
      end
      count += 1
      break
    end

    puts 'This is outside all loops.'
    assert_equal count, 1   
  end


end