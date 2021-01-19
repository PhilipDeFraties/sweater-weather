class Munchies
  attr_reader :destination_city,
              :travel_time,
              :forecast,
              :restaurant
  def initialize(route_data, weather_data, restaurant_data)
    @destination_city = format_city(route[:locations][1])
    @travel_time =
    # @forecast =
    # @restaurant =
  end

  def format_city
    city = route[:adminArea5]
    state = route[:adminArea3]
    "#{city}, #{state}"
  end
end
