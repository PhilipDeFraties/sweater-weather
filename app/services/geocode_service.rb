class GeocodeService
  def self.conn
    Faraday.new(url: 'https://www.mapquestapi.com')
  end

  def self.get_route(start_loc, end_loc)
    response = conn.get('/directions/v2/route?') do |req|
      req.params['from'] = "#{start_loc}"
      req.params['to'] = "#{end_loc}"
      req.params['key'] = ENV['MAPQUEST_API_KEY']
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
