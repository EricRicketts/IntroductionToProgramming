describe 'Introduction To Programming Exercises' do
  
  before(:all) do
    @ary = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  end
   
  it 'exercise 1' do
    i = 1
    @ary.each do |num|
      expect(num).to eq i
      i += 1        
    end
  end
 
  it 'exercise 2' do
    i = 6
    @ary.each do |num|
      if num > 5
        expect(num).to eq i
        i += 1         
      end
    end
  end

  it 'exercise 3' do
    odd_ary = [1, 3, 5, 7, 9]
    expect(@ary.select {|n| n.odd?}).to eq odd_ary
  end

  it 'exercises 4, 5, and 6' do
    ary = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
    expect([1, 2, 3, 4, 5, 6, 7, 8, 9, 10].push(11).unshift(0)).to eq ary
    ary.unshift(3)
    ary.pop()
    expect(ary).to eq [3, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    expect(ary.uniq.sort).to eq [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  end

  it 'exercise 8' do
    h = {one: 1, two: 2, three: 3} 
    expect(h.keys.sort).to eq [:one, :three, :two]
    expect(h.values.sort).to eq [1, 2, 3]  
  end

  it 'exercise 9' do
    h = {a:1, b:2, c:3, d:4}
    expect(h[:b]).to eq 2
    h[:e] = 5
    expect(h).to eq({:a => 1, :b => 2, :c => 3, :d => 4, :e => 5})
  end

end

puts "Exercise 7"
puts "Arrays are ordered by a numeric sequence Hashes are organized like a dictionary with key value pairs"