class RoadTripFacade
  def self.plan_road_trip(query_data)
    route_data = GeocodeService.get_route(query_data[:origin], query_data[:destination])
    unless route_data[:info][:statuscode] != 0
      forecast = WeatherService.find_forecast(route_data[:route][:locations][1][:latLng])
      RoadTrip.new(route_data, forecast)
    else
      ErrorTrip.new(query_data)
    end
  end
end
