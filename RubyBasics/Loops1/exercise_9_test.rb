require 'minitest/autorun'
require 'minitest/pride'

class Exercise9Test < Minitest::Test
  def test_thats_odd
    odd_ary = []
    for i in 1..100
      odd_ary.push(i) if i.odd?
      puts i if i.odd?
    end
    refute odd_ary.any?(&:even?)
  end
end
