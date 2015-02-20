require 'net/http'
require 'json'

def temp(city)
  uri = URI("http://api.openweathermap.org/data/2.5/weather?q=#{city}")
  data = Net::HTTP.get(uri)
  JSON.parse(data)['main']['temp']
end

def array_temp(array)
  hash = Hash.new(0)
  array.each { |city| hash[city.to_sym] = temp(city)}
  hash
end

def rank_by_temp(array)
  hash = array_temp(array)
  answer = hash.sort_by { |key, value| value}
  answer.map {|a| a[0].to_s}.reverse
end
