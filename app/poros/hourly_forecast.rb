class HourlyForecast
  attr_reader :time,
              :predicted_temp,
              :wind_speed,
              :wind_direction,
              :conditions,
              :icon,
              :temperature

  def initialize(weather_data)
    @time = Time.at(weather_data[:dt]).strftime('%H:%M:%S')
    @temperature = weather_data[:temp]
    @wind_speed = "#{weather_data[:wind_speed]}"
    @wind_direction = deg_to_compass(weather_data[:wind_deg])
    @conditions = weather_data[:weather][0][:description]
    @icon = weather_data[:weather][0][:icon]
  end

  private
  
  def deg_to_compass(num)
    val = ((num/22.5)+0.5)
    arr =[ "N","NNE","NE","ENE","E","ESE", "SE", "SSE","S","SSW","SW","WSW","W","WNW","NW","NNW"]
    arr[(val % 16)]
  end
end
