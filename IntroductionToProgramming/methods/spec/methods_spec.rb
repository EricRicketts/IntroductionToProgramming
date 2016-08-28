describe 'Exercises for Methods Chapter of Introduction To Programming' do

  def scream(words)
    words = words + "!!!!"
    return
    puts words
  end

  def scream_again(words)
    words + "!!!!"
  end

  context 'First Exercise' do
    
    it 'exercise 1' do
      expect(greeting("Homer")).to eq "Hello, Homer"
    end

  end

  context 'Second Exercise' do
    
    it 'exercise 2 part a' do
      x = 2
      expect(x).to eq 2
    end

    it 'exercise 2 part b' do
      expect(puts x=2).to be_nil
    end

    it 'exercise 2 part c' do
      expect(p name = "Joe").to eq "Joe"
    end

    it 'exercise 2 part d' do
      four = "four"
      expect(four).to eq "four"
    end

    it 'exercie 2 part e' do
      expect(print something = "nothing").to be_nil
    end

  end

  context 'Third Exercise' do
    
    it 'exercise 3' do
      expect(multiply(4, 5)).to eq 20
    end

  end

  context 'Fourth Exercise' do
    
    it 'exercise 4' do
      expect(scream("Yikes").to_s).to be_empty
    end

  end

  context 'Fifth Exercise' do
    
    it 'exercise 5' do
      expect(scream_again("Marge")).to eq "Marge!!!!"
    end

  end

  puts "Sixth exercise; incorrect number of arguments for method call; needs 2 only given 1"
end