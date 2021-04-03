class ForecastFacade
  def self.get_forecast(location)
    coordinates = GeocodeService.find_coordinates(location)
    weather_data = WeatherService.find_forecast(coordinates)
    h = Hash.new
    h[:current_weather] = CurrentForecast.new(weather_data[:current])
    h[:daily_weather] = weather_data[:daily][0..4].map { |day| DailyForecast.new(day) }
    h[:hourly_weather] = weather_data[:hourly][0..7].map { |hour| HourlyForecast.new(hour) }
    forecast = Forecast.new(h)
  end
end
