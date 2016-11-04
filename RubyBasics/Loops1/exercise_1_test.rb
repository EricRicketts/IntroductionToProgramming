require 'minitest/autorun'
require 'minitest/pride'

class Exercise1Test < Minitest::Test
  
  def test_break_out_of_do_loop

    count = 0

    loop do 
      puts 'Just keep printing ...'
      count += 1
      break count if count >= 1
    end

    assert_equal count, 1
  end

  def test_break_immeditately_out_of_do_loop
    loop_var = loop do
      puts 'Just keep printing again ...'
      break
    end 

    assert_nil loop_var   
  end

end