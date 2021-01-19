class MunchiesFacade
  def self.get_food_and_forecast(query_data)
    route_data = GeocodeService.get_route(query_data[:start], query_data[:end])
    weather_data = WeatherService.find_forecast(route_data[:route][:locations][1][:latLng])
    restaurant_data = BusinessService.find_food(query_data)
    Munchies.new(route_data, weather_data, restaurant_data)
  end
end
