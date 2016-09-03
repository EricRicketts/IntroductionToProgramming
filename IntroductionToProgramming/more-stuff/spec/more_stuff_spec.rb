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