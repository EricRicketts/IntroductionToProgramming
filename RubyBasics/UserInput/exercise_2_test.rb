require 'minitest/autorun'
require 'minitest/pride'

class Exercise2Test < Minitest::Test

  def setup
    def age
      puts ">> What is your age in years?"
      age_in_years = gets.chomp.strip.to_i
      puts "You are #{age_in_years*12} months old."
    end
  end

  def test_age
    $stdin = StringIO.new("  35  \n")
    assert_output(/\A>> What is your age in years\?\nYou are 420 months old\.\n\z/) { age }
  end
end