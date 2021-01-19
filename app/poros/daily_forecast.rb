class DailyForecast
  def initialize(weather_data)
    @date = Time.at(weather_data[:dt]).strftime('%Y-%m-%d')
    @sunrise = Time.at(weather_data[:sunrise])
    @sunset = Time.at(weather_data[:sunset])
    @max_temp = weather_data[:temp][:max]
    @min_temp = weather_data[:temp][:min]
    @conditions = weather_data[:weather][0][:description]
    @icon = weather_data[:weather][0][:icon]
  end
end
