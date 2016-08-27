describe 'Execises for Basics Chapter of Introduction to Programming' do

  before(:all) do
    @number = 5432
    @movies = {
      :jaws => 1975,
      :arthur => 1981,
      :shrek => 2001,
      :hero => 2004,
      :frozen => 2013
    }
    @years = [1975, 1981, 2001, 2004, 2013]
  end

  context 'First Exercise' do

    it 'exercise 1' do
      first_name = 'Eric'   
      last_name = 'Ricketts'
      expect(first_name + ' ' + last_name).to eq 'Eric Ricketts'
    end
    
  end

  context 'Second Exercise' do

    it 'exercise 2 part a' do
      expect(@number / 1000).to eq 5         
    end

    it 'exercise 2 part b' do
      expect(@number % 1000 / 100).to eq 4     
    end

    it 'exercise 2 part c' do
      expect(@number % 100 / 10).to eq 3
    end

    it 'exercise 2 part d' do
      expect(@number % 10).to eq 2
    end
    
  end

  context 'Third Exercise' do
    
    it 'exercise 3 part a' do
      expect(@movies[:jaws]).to eq 1975
    end

    it 'exercise 3 part b' do
      expect(@movies[:arthur]).to eq 1981
    end

    it 'exercise 3 part c' do
      expect(@movies[:shrek]).to eq 2001
    end

    it 'exercise 3 part d' do
      expect(@movies[:hero]).to eq 2004
    end

    it 'exercise 3 part e' do
      expect(@movies[:frozen]).to eq 2013
    end

  end

  context 'Fourth Exercise' do
    
    it 'exercise 4 part a' do
      expect(@years[0]).to eq 1975
    end

    it 'exercise 4 part b' do
      expect(@years[1]).to eq 1981
    end

    it 'exercise 4 part c' do
      expect(@years[2]).to eq 2001
    end

    it 'exercise 4 part d' do
      expect(@years[3]).to eq 2004
    end

    it 'exercise 4 part e' do
      expect(@years[4]).to eq 2013
    end

    it 'exercises 3 and 4 condensed version' do
      years = @movies.values.sort
      expect(years.eql?(@years)).to eq true
    end

  end

  context 'Fifth Exercise' do

    it 'exercise 5 part a' do
      expect((1..5).to_a.inject(1, :*)).to eq 120        
    end

    it 'exercise 5 part b' do
      expect((1..6).to_a.inject(1, :*)).to eq 720
    end

    it 'exercise 5 part c' do
      expect((1..7).to_a.inject(1, :*)).to eq 5040
    end

    it 'exercise 5 part d' do
      expect((1..8).to_a.inject(1, :*)).to eq 40_320
    end

  end

  context 'Sixth Exercise' do
    
    it 'exercise 6 part a' do
      expect(3.00**2).to eq 9.00
    end

    it 'exercise 6 part b' do
      expect(4.00**2).to eq 16.00
    end

    it 'exercise 6 part c' do
      expect(5.00**2).to eq 25.00
    end

  end

  puts ("It is a syntax error, the programmer closed off the statemetn with a ')' instead of a '}'")
  puts ("this could happen when improperly declaring a hash")

end