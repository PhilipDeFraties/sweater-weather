class Foodie
  attr_reader :end_location,
              :travel_time,
              :forecast,
              :restaurant

  def initialize(route_data, weather_data, restaurant_data)
    @end_location =  format_city(route_data[:route][:locations][1])
    @travel_time = route_data[:route][:formattedTime]
    @forecast = parse_forecast(weather_data, route_data[:route][:realTime])
    binding.pry
    @restaurant = { name: restaurant_data[:name],
       address: restaurant_data[:location][:address] }
  end

  def format_city(location)
    city = location[:adminArea5]
    state = location[:adminArea3]
    "#{city}, #{state}"
  end

  def parse_forecast(forecast, travel_time)
    arrival_time = Time.now.to_time.to_i + travel_time
    forecast[:hourly].each do |forecast|
      if forecast[:dt] < arrival_time && (forecast[:dt] + 3600) > arrival_time
        return  {
            summary: forecast[:weather][0][:description],
            temperature: forecast[:temp]
          }
      end
    end
  end
end
