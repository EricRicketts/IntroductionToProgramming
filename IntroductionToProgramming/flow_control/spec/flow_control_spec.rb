describe 'Launch School Introduction To Programming Flow Control Chapter' do
  
  context 'First Exercise' do
    
    it 'exercise 1 part a' do
      expect((32 * 4) >= 129).to eq false
    end

    it 'exercise 1 part b' do
      expect(false != !true).to eq false
    end

    it 'exercise 1 part c' do
      expect(true == 4).to eq false
    end

    it 'exercise 1 part d' do
      expect(false == (847 == '847')).to eq true
    end

    it 'exercise 1 part e' do
      expect((!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false).to eq true
    end

  end

  context 'Second Exercise' do
    
    it 'exercise 2 part a' do
      expect(capitalize_bigger_than_10("hello world")).to eq "HELLO WORLD"
    end

    it 'exercise 2 part b' do
      expect(capitalize_bigger_than_10("lower if")).to eq "lower if"
    end

  end

  context 'Third Exercise' do
    
    it 'exercise 3 part a' do
      expect(classify_number(37)).to eq "number is between 0 and 50 inclusive"
    end

    it 'exercise 3 part b' do
      expect(classify_number(81)).to eq "number is between 51 and 100 inclusive"
    end

    it 'exercise 3 part c' do
      expect(classify_number(-5)).to eq "number is less than 0"
    end

    it 'exercise 3 part d' do
      expect(classify_number(113)).to eq "number is greater than 100"
    end

  end

  context 'Fourth Exercise' do
    
    it 'exercise 4 part a' do
      expect('4' == 4 ? "TRUE" : "FALSE").to eq "FALSE"
    end

    it 'exercise 4 part b' do
      x = 2
      eval = ((x * 3) / 2) == (4 + 4 - x - 3)
      expect(eval ? "Did you get it right?" : "Did you?").to eq "Did you get it right?"
    end

    it 'exercise 4 part c' do
      expect(alright_decision).to eq "Alright now!"
    end

  end


  context 'Fifth Exercise' do
    
    it 'exercise 5 part a' do
      expect(classify_number_with_case(37)).to eq "number is between 0 and 50 inclusive"
    end

    it 'exercise 5 part b' do
      expect(classify_number_with_case(81)).to eq "number is between 51 and 100 inclusive"
    end

    it 'exercise 5 part c' do
      expect(classify_number_with_case(-5)).to eq "number is less than 0"
    end

    it 'exercise 5 part d' do
      expect(classify_number_with_case(113)).to eq "number is greater than 100"
    end

  end

  puts "Exercise 6; syntax error missiong end to close out if statement"

end