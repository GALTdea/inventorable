require 'net/http'
class City < ApplicationRecord
  # geocode_by_city_and_state :address => :city_state
  geocoded_by :name
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  validates :name, presence: true, uniqueness: true



  def address
    [name]
  end

  def weather_data
    url = "https://api.openweathermap.org/data/2.5/weather?lat=#{self.latitude}&lon=#{self.longitude}&units=imperial&appid=2d29671ab8b2ba1d5c84be1d9f943c35"
    uri = URI(url)
    response = Net::HTTP.get_response(uri)
      JSON.parse(response.body)
  end
end
