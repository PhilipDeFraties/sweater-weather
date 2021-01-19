class Forecast
  attr_reader :id,
              :current_weather,
              :daily_weather,
              :hourly_weather

  def initialize(weather_data)
    @id = nil
    @current_weather = CurrentForecast.new(weather_data[:current])
    @daily_weather = daily_forecasts(weather_data[:daily][0..4])
    @hourly_weather = hourly_forecasts(weather_data[:hourly][0..7])
  end

  def daily_forecasts(daily_data)
    daily_data.map { |day| DailyForecast.new(day) }
  end

  def hourly_forecasts(hourly_data)
    hourly_data.map { |hour| HourlyForecast.new(hour) }
  end
end
