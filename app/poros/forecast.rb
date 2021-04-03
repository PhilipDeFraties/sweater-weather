class Forecast
  attr_reader :id,
              :current_weather,
              :daily_weather,
              :hourly_weather

  def initialize(weather_data)
    @id = nil
    @current_weather = weather_data[:current_weather]
    @daily_weather = weather_data[:daily_weather]
    @hourly_weather = weather_data[:hourly_weather]
  end
end
