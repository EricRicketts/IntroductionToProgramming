def capitalize_bigger_than_10(words)
  words.length > 10 ? words.upcase : words  
end

def classify_number(number)
  if (number >= 0 && number <= 50)
    "number is between 0 and 50 inclusive"
  elsif (number >= 51 && number <= 100)
      "number is between 51 and 100 inclusive"
  elsif (number < 0)
    "number is less than 0"
  else
    "number is greater than 100"  
  end
end

def alright_decision
  y = 9
  x = 10
  if (x + 1) <= (y)
   "Alright."
  elsif (x + 1) >= (y)
   "Alright now!"
  elsif (y + 1) == x
   "ALRIGHT NOW!"
  else
   "Alrighty!"
  end    
end

def classify_number_with_case(number)
  answer = case number
  when 0..50
    "number is between 0 and 50 inclusive"      
  when 51..100
    "number is between 51 and 100 inclusive"      
  else
    if number < 0
      "number is less than 0"    
    else
      "number is greater than 100"           
    end
  end
  answer
end