describe 'Execises for Basics Chapter of Introduction to Programming' do

  it 'exercise 1' do
    first_name = 'Eric'   
    last_name = 'Ricketts'
    expect(first_name + ' ' + last_name).to eq('Eric Ricketts')
  end

  it 'exercise 2 part a' do
    number = 5432
    expect(number / 1000).to eq(5)         
  end


end