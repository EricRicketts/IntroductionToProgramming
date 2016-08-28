describe 'Exercises for Loops and Iterators Chapter of Introduction To Programming' do
 
  context 'First Exercise' do
    
    it 'exercise 1' do
      x = [1, 2, 3, 4, 5]
      result = x.each do |a|
        a + 1
      end
      expect(result).to eq x
    end

  end

  context 'Third Exercise' do
  
    it 'exercise 3' do
      x = ["zero", "one", "two", "three", "four"]
      ary = []
      x.each_with_index {|str, i| ary.push(i, str)}
      expect(ary).to eq [0, "zero", 1, "one", 2, "two", 3, "three", 4, "four"]     
    end

  end

  context 'Fourth Exercise' do
    
    it 'exercise 4' do
      ary = []
      expect(countdown(6, ary)).to eq [6, 5, 4, 3, 2, 1, 0]
    end

  end

end