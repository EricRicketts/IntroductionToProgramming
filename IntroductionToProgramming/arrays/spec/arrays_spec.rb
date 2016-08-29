describe 'Exercises for Introduction To Programming Arrays Chapter' do
  
  context 'First Exercise' do
    
    it 'exercise 1' do
      arr = [1, 3, 5, 7, 9, 11]
      number = 3
      expect(arr.include?(number)).to eq true
    end

  end

  context 'Second Exercise' do
    
    it 'exercise 2 part a' do
      arr = ["b", "a"]
      arr = arr.product(Array(1..3))
      expect(arr).to eq [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
      arr.first.delete(arr.first.last)
      expect(arr).to eq [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
    end

    it 'exercise 2 part b' do
      arr = ["b", "a"]
      arr = arr.product([Array(1..3)])
      expect(arr).to eq [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
      arr.first.delete(arr.first.last) 
      expect(arr).to eq [["b"], ["a", [1, 2, 3]]]   
    end

  end

end