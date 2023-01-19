# gem install httparty 

require 'httparty'

url = "https://api.open-meteo.com/v1/forecast?"
gijon = "latitude=43.5453&longitude=-5.66193"
response = HTTParty.get("#{url}""#{gijon}""&current_weather=true")


puts response.body

