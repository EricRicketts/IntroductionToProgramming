require 'minitest/autorun'
require 'minitest/pride'

class Exercise3Test < Minitest::Test
  
  def setup
    
    def ignore_case(str_name)
      str = "Roger"
      str.casecmp?(str_name)
    end

  end

  def test_ignore_case_match
    assert(ignore_case("RoGeR"))
  end

  def test_ignore_case_no_match
    refute(ignore_case("DAVE"))
  end

end