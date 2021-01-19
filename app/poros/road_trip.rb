class RoadTrip
  attr_reader :start_city,
              :end_city,
              :travel_time,
              :weather_at_eta,
              :id
  def initialize(route, forecast)
    @id = nil
    @start_city = format_city(route[:route][:locations][0])
    @end_city = format_city(route[:route][:locations][1])
    @travel_time = route[:route][:formattedTime]
    @weather_at_eta = parse_forecast(forecast, route[:route][:realTime])
  end

  def format_city(route)
    city = route[:adminArea5]
    state = route[:adminArea3]
    "#{city}, #{state}"
  end

  def parse_forecast(forecast, travel_time)
    arrival_time = Time.now.to_time.to_i + travel_time
    forecast[:hourly].each do |forecast|
      if forecast[:dt] < arrival_time && (forecast[:dt] + 3600) > arrival_time
        return  {
            temperature: forecast[:temp],
            conditions: forecast[:weather][0][:description]
          }
      end
    end
  end
end
