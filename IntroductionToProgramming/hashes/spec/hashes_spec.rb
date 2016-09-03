describe 'Exercises For Introduction To Programming Hashes Chapter' do
  
  context 'First Exercise' do
    
    it 'exercise 1' do
      family = {  
        uncles: ["bob", "joe", "steve"],
        sisters: ["jane", "jill", "beth"],
        brothers: ["frank","rob","david"],
        aunts: ["mary","sally","susan"]
      }
      immediate_family = family.select {|relationship, names| relationship == :sisters || relationship == :brothers}.values.flatten.sort
      expect(immediate_family).to eq ["beth", "david", "frank", "jane", "jill", "rob"]
    end

  end

  context 'Second Exercise' do

    it 'exercise 2' do
      h1 = { a: 100, b: 200 }
      h2 = { c: 300, d: 400 }
      h3 = h1.merge(h2)
      expect(h3).to eq({ :a => 100, :b => 200, :c => 300, :d => 400 })
      h1.merge!(h2)
      expect(h1).to eq({ :a => 100, :b => 200, :c => 300, :d => 400})
    end

  end

  context 'Third Exercise' do
   
    before(:all) do
      @h = { spider: "Black Window", snake: "King Cobra", shark: "Great White", cat: "Tiger"}
    end

    it 'exercise 3 part a' do
      expect(@h.keys.sort).to eq [:cat, :shark, :snake, :spider]    
    end

    it 'exercise 3 part b' do
      expect(@h.values.sort).to eq ["Black Window", "Great White", "King Cobra", "Tiger"]
    end

    it 'exercise 3 part c' do
      @h.each do |key, value|
        expect(@h.has_key?(key)).to eq true
        expect(@h[key]).to eq value
      end
    end

  end

  context 'Fourth Exercise' do
    
    it 'exercise 4' do
      person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
      expect(person[:name]).to eq 'Bob'
    end

  end

  context 'Fifth Exercise' do
    
    it 'exercise 5' do
      my_hash = { zero: 0, one: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9}
      expect(my_hash.has_value?(3)).to eq true
      expect(my_hash.has_value?(20)).to eq false     
    end

  end

  context 'Sixth Exercise' do
    
    it 'exercise 6' do
      answer = 
        [
        ["demo", "dome", "mode"],
        ["none", "neon"], 
        ["tied", "diet", "edit", "tide"],
        ["evil", "live", "veil", "vile"],
        ["fowl", "wolf", "flow"]
        ]
      words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
                'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
                'flow', 'neon']
      anagrams = words.group_by {|word| word.downcase.chars.sort}.values
      i = 0
      anagrams.each do |words|
        expect(words.eql?(answer[i]))
        i +=1    
      end
    end

  end

  context 'Seventh Exercise' do
    
    it 'exercise 7' do
      x = "hi there"
      my_hash = {x: "some value"}
      my_hash2 = {x => "some value"} 
      expect(my_hash.keys[0]).to_not eq my_hash2.keys[0]
      expect(my_hash[:x]).to eq my_hash2[x]     
    end

  end

  puts "Exercise 8; answer is B: 'there is no method keys for Array objects'"

end