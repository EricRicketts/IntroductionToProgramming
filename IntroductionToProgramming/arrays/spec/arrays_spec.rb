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

  context 'Third Exercise' do
    
    it 'exercise 3' do
      arr = [["test", "hello", "world"],["example", "mem"]]
      expect(arr[1][0]).to eq "example"
      expect(arr.last.first).to eq "example"
    end

  end

  context 'Fourth Exercise' do
    
    before(:all) do
      @arr = [15, 7, 18, 5, 12, 8, 5, 1]
    end

    it 'exercise 4 part a' do
      expect(@arr.index(5)).to eq 3    
    end

    it 'exercise 4 part b' do
      expect{@arr.index[5]}.to raise_error(NoMethodError)
    end

    it 'exercise 4 part c' do
      expect(@arr[5]).to eq 8
    end

  end

  context 'Fifth Exercise' do
    
    before(:all) do
      @string = "Welcome to America!"
    end

    it 'exercise 5 part a' do
      expect(@string[6]).to eq "e"
    end

    it 'exercise 5 part b' do
      expect(@string[11]).to eq "A"
    end

    it 'exercise 5 part c' do
      expect(@string[19]).to be_nil
    end

  end

  context 'Seventh Exercise' do

    it 'exercise 7' do
      ary = [2, 4, 6, 8, 10]
      new_ary = ary.map {|num| num + 2}
      expect(ary).to eq [2, 4, 6, 8, 10]
      expect(new_ary).to eq [4, 6, 8, 10, 12]
    end
    
  end

  puts "Exercise 6; arrays are sequentially positioned so one needs an integer to access the array"
end