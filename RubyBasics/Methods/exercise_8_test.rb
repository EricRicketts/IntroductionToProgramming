require 'minitest/autorun'
require 'minitest/pride'

class Exercise8Test < Minitest::Test

  NAMES = ['Dave', 'Sally', 'George', 'Jessica']
  ACTIVITIES = ['walking', 'running', 'cycling']
  
  def setup
    
    def random_name(names)
      names.sample
    end

    def random_activity(activities)
      activities.sample
    end

    def sentence(a_name, an_activity)
      "#{a_name} went #{an_activity} today."
    end

  end

  def test_doing_something
    assert_match(/\A\w+\swent\s\w+\stoday\./, sentence(random_name(NAMES), random_activity(ACTIVITIES)))
  end

end