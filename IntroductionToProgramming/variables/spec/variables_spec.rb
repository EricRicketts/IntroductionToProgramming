require 'stringio'

# StringIO class "Commonly used to simulate '$stdio' and '$stderr'"
# got this solution from StackOverflow

def capture_name
  # puts "Please type in your first name" => add outside of testing
  name = $stdin.gets.chomp
  "Hello, #{name}"
end

def future_age
  # puts "How old are you?" => add outside of testing
  age = $stdin1.gets.chomp.to_i
  age_ary = [10, 20, 30, 40] 
  result_str = age_ary.map {|n| "In #{n} years you will be:\n#{n + age}\n"}.join
end

def capture_name_print_10_times
  # cannot call capture_name method and have test work
  # puts "Please type in your first name" => add outside of testing
  name = $stdin2.gets.chomp
  "Hello, #{name}\n" * 10
end

def first_and_last_name
  # puts "Enter your first name"
  first = $stdin3.gets.chomp
  # puts "Enter yoiur second name"
  last = $stdin4.gets.chomp
  first + " " + last
end

describe 'Exercises for Variables Chapter of Introduction To Programming' do

  before(:all) do
    $stdin = StringIO.new("James T. Kirk\n")
    $stdin1 = StringIO.new("35\n")
    $stdin2 = StringIO.new("Elmer Fudd\n")
    $stdin3 = StringIO.new("Elmer\n")
    $stdin4 = StringIO.new("Fudd\n")
  end

  after(:all) do
    $stdin = STDIN
    $stdin1 = STDIN
  end

  context 'First Exercise' do
    
    it "exercise 1" do
      expect(capture_name).to eq 'Hello, James T. Kirk'
    end

  end

  context 'Second Exercise' do

    it "exercise 2" do
      expect_str = 
      "In 10 years you will be:\n45\n" +
      "In 20 years you will be:\n55\n" +
      "In 30 years you will be:\n65\n" +
      "In 40 years you will be:\n75\n"
      expect(future_age).to eq expect_str
    end
    
  end

  context 'Third Exercise' do

    it "exercise 3" do
      expect_str = "Hello, Elmer Fudd\n" * 10
      expect(capture_name_print_10_times).to eq expect_str    
    end

  end

  context 'Fourth Exercise' do
    
    it 'exercise 4' do
      expect_str = "Elmer Fudd"
      expect(first_and_last_name).to eq expect_str
    end

  end

  context 'Fifth Exercise' do
    
    it 'exercise 5 part a' do
      x = 0
      3.times do
        x += 1
      end
      expect(x).to eq 3   
    end

    it 'exercise 5 part b' do
      y = 0
      3.times do
        y += 1
        x = y
      end
      expect{x}.to raise_error(NameError)       
    end

  end

  puts "answer to exercise 7"
  puts "the error was caused by a variable or method never being declared"

end