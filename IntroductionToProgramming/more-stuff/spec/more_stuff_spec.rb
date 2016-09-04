describe 'Introduction To Programming More Stuff Exercises' do
  
  context 'First Exercise' do
    
    it 'exercise 1 part a' do
      expect(/lab/.match("laboratory")).not_to be_nil
    end

    it 'exercise 1 part b' do
      expect(/lab/.match("experiment")).to be_nil
    end

    it 'exercise 1 part c' do
      expect(/[Ll]ab/.match("Pans Labyrinth")).not_to be_nil
    end

    it 'exercise 1 part d' do
      expect(/lab/.match("elaborate")).not_to be_nil
    end

    it 'exercise 1 part e' do
      expect(/lab/.match("polar bear")).to be_nil
    end

  end


end

def execute(&block)
  block
end
puts "Second Exercise"
execute { puts "Hello from inside the execute method!" }
puts "nothing is printed for the second exercise because the block is not called from within the method"
puts "in order for it to work the block needs the call method, ie, block.call from within execture"
puts
puts "Third Exercise"
puts "Exception handling deals with errors in a predictable and manageable way"
puts "it can do so by altering the flow of control to an option which does not cause the program to stop"
puts
puts "Fourth Exercise"
puts "Answered in the exercise 2 comments"
puts
puts "Fifth Exercise"
puts "The block parameter needs an ampersand in front of it, otherwise the method treats it as a non-block parameter"
puts "and only block objects have the call method associated with them"