require 'minitest/autorun'
require 'minitest/pride'

class Exercise10Test < Minitest::Test

  def setup
    
    def tricky_number
      if true
        number = 1
      else
        2
      end
    end
  end

  def test_tricky_number
    assert_output(/\A1\n\z/) { puts tricky_number }    
  end

end