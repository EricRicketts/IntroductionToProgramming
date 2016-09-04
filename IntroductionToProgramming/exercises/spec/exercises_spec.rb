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
    expect(h.delete_if {|key, value| value < 3.5}).to eq({:d => 4, :e => 5})
  end

  it 'exercise 10' do
    h1 = {a: [1, 2, 3], b: [4, 5, 6]}
    a1 = [{a: 1}, {b: 2}, {c: 3}]
    expect(h1[:a]).to eq([1, 2, 3])
    expect(a1[1]).to eq({:b => 2})
  end

  it 'exercises 12 and 13' do
    contact_data = [
      ["joe@email.com", "123 Main st.", "555-123-4567"],
      ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
    ]
    contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

    contacts["Joe Smith"] = {:email => contact_data.first[0], :address => contact_data.first[1], :phone => contact_data.first[2]}
    contacts["Sally Johnson"] = {:email => contact_data.last[0], :address => contact_data.last[1], :phone => contact_data.last[2]}
    expect(contacts["Joe Smith"][:email]).to eq "joe@email.com"
    expect(contacts["Sally Johnson"][:phone]).to eq "123-234-3454"
  end

  it 'exercise 14' do
    contact_data = [
      ["joe@email.com", "123 Main st.", "555-123-4567"],
      ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
    ]
    keys_to_add = [:email, :address, :phone]
    contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
    hash_keys = contacts.keys.sort

    contact_data.each_with_index do |data_ary, index|
      keys_to_add.each_with_index do |key, idx|
        contacts[hash_keys[index]][key] = data_ary[idx] 
      end   
    end

    expect(contacts["Joe Smith"][:email]).to eq "joe@email.com"        
    expect(contacts["Joe Smith"][:address]).to eq "123 Main st."        
    expect(contacts["Joe Smith"][:phone]).to eq "555-123-4567" 

    expect(contacts["Sally Johnson"][:email]).to eq "sally@email.com"        
    expect(contacts["Sally Johnson"][:address]).to eq "404 Not Found Dr."        
    expect(contacts["Sally Johnson"][:phone]).to eq "123-234-3454"        
  end

end

puts "Exercise 7"
puts "Arrays are ordered by a numeric sequence Hashes are organized like a dictionary with key value pairs"
puts
puts "Exercise 11"
puts "Just by looking at Rails Documentation and creating an API with the -api option it seems a hash based api would be better"
puts "because JSON is the typical default format for the api and this turns out to be a hash in Ruby"
puts "the Launch School answer was 'answers may vary' which surprised me"