class ForecastFacade
  def self.get_forecast(location)
    coordinates = GeocodeService.find_coordinates(location)
    weather_data = WeatherService.find_forecast(coordinates)
    forecast = Forecast.new(weather_data)
  end
end
