class Foodie
  attr_reader :end_location,
              :travel_time,
              :forecast,
              :restaurant,
              :id

  def initialize(route_data, weather_data, restaurant_data)
    @id = nil
    @end_location =  format_city(route_data[:route][:locations][1])
    @travel_time = route_data[:route][:formattedTime]
    @forecast = parse_forecast(weather_data, route_data[:route][:realTime])
    @restaurant = { name: restaurant_data[:name],
       address: restaurant_data[:location][:address] }
  end

  private

  def format_city(location)
    city = location[:adminArea5]
    state = location[:adminArea3]
    "#{city}, #{state}"
  end

  def parse_forecast(forecast, travel_time)
    if travel_time == 10000000
      return {
          summary: "current weather: #{forecast[:current][:weather][0][:description]}",
          temperature: "current temperature: #{forecast[:current][:temp]}"
        }
    else
      arrival_time = Time.now.to_time.to_i + travel_time
      forecast[:hourly].each do |forecast|
        if forecast[:dt] < arrival_time && (forecast[:dt] + 3600) > arrival_time
          return  {
              summary: forecast[:weather][0][:description],
              temperature: "#{forecast[:temp]}"
            }
        end
      end
    end
  end
end
