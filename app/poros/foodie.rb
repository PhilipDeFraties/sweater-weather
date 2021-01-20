class Foodie
  attr_reader :end_location,
              :travel_time,
              :forecast,
              :restaurant

  def initialize(route_data, weather_data, restaurant_data)
    binding.pry
    @end_location =  format_city(route_data[:route][:locations][1])
    # @travel_time =
    # @forecast =
    # @restaurant =
  end

  def format_city
    city = route_data[:adminArea5]
    state = route_data[:adminArea3]
    "#{city}, #{state}"
  end
end
