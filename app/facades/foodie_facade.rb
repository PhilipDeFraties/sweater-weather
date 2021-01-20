class FoodieFacade
  def self.get_restaurant_and_forecast(query_data)
    route_data = GeocodeService.get_route(query_data[:start], query_data[:end])
    weather_data = WeatherService.find_forecast(route_data[:route][:locations][1][:latLng])
    restaurant_data = RestaurantService.find_restaurants(route_data[:route][:locations][1][:latLng], query_data[:search])
    Foodie.new(route_data, weather_data, restaurant_data)
  end
end
