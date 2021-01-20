class ErrorTrip
  attr_reader :start_city,
              :end_city,
              :travel_time,
              :weather_at_eta,
              :id
  def initialize(query_data)
    @id = nil
    @start_city = query_data[:origin]
    @end_city = query_data[:destination]
    @travel_time = "impossible"
    @weather_at_eta = {}
  end
end
