class GeocodeService
  def self.find_coordinates(location)
    response = conn.get('/geocoding/v1/address') do |req|
      req.params['location'] = location
      req.params['key'] = ENV['MAPQUEST_API_KEY']
      req.params[:maxResults] = 1
    end
    geo_data = JSON.parse(response.body, symbolize_names: true)
    geo_data[:results][0][:locations][0][:latLng]
  end

  def self.conn
    Faraday.new(url: 'https://www.mapquestapi.com')
  end
end
