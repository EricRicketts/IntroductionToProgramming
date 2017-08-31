require 'minitest/autorun'
require 'minitest/pride'

class Exercise2Test < Minitest::Test

  def setup
    def age
      puts ">> What is your age in years?"
      age_in_years = gets.chomp.strip
      age_in_months = age_in_years.to_i * 12
      error_string = "Sorry, integer only input required."
      valid_string = "You are #{age_in_months} months old."
      output_string = /\A\d+\z/ === age_in_years ? valid_string : error_string
      puts output_string
    end
  end

  def test_valid_age
    $stdin = StringIO.new("  35  \n")
    assert_output(/\A>> What is your age in years\?\nYou are 420 months old\.\n\z/) { age }
  end

  def test_invalid_age
    $stdin = StringIO.new(" 4rr \n")   
    assert_output(/\A>> What is your age in years\?\nSorry, integer only input required\.\n\z/) { age }
  end

end