require 'net/http'
class City < ApplicationRecord 


  # def self.weather_api(lat, long )
  #   url = "https://api.openweathermap.org/data/2.5/weather?lat=#{lat}&lon=#{long}&appid=2d29671ab8b2ba1d5c84be1d9f943c35"
  #   uri = URI(url)
  #   response = Net::HTTP.get_response(uri)

  #   @data = JSON.parse(response.body)
  # end

  def weather_data
    url = "https://api.openweathermap.org/data/2.5/weather?lat=#{self.latitude}&lon=#{self.longitude}&units=imperial&appid=2d29671ab8b2ba1d5c84be1d9f943c35"
    uri = URI(url)
    response = Net::HTTP.get_response(uri)
     JSON.parse(response.body)
  end


end
