require 'weather_rankings'

describe 'temperature rankings' do

  it 'should get the temperature for London' do
    expect(temp('London')).to eq(280.05)
  end

  it 'should get the temperature for an array of cities' do
    expect(array_temp(['London'])).to eq({London: 280.05})
  end

  it 'should sort the cities in rank of temp' do
    expect(rank_by_temp(['Paris', 'London', 'Seoul', 'Manila'])).to eq(['Manila', 'Paris', 'London', 'Seoul'])
  end

end
