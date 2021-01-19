class WeatherService
  def self.find_forecast(coordinates)
    response = conn.get('/data/2.5/onecall') do |faraday|
      faraday.params['lat'] = coordinates[:lat]
      faraday.params['lon'] = coordinates[:lng]
      faraday.params['appid'] = ENV['WEATHER_API_KEY']
      faraday.params['units'] = 'imperial'
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: 'http://api.openweathermap.org')
  end
end
