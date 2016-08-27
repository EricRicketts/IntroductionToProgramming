describe 'Execises for Basics Chapter of Introduction to Programming' do

  before(:all) do
    @number = 5432
  end

  it 'exercise 1' do
    first_name = 'Eric'   
    last_name = 'Ricketts'
    expect(first_name + ' ' + last_name).to eq 'Eric Ricketts'
  end

  it 'exercise 2 part a' do
    number = 5432
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