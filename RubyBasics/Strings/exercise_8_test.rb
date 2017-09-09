require 'minitest/autorun'
require 'minitest/pride'

class Exercise8Test < Minitest::Test
  
  def test_each_char
    str = 'abcdefghijklmnopqrstuvwxyz'
    new_str = "a\nb\nc\nd\ne\nf\ng\nh\ni\nj\nk\nl\nm\nn\no\np\nq\nr\ns\nt\nu\nv\nw\nx\ny\nz\n"
    assert_output(/\A#{new_str}\z/) { puts (str.split(//).join("\n") + "\n") }
  end

end