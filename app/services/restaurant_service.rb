class RestaurantService
  def self.find_restaurants(coordinates, type)
    response = conn.get('/api/v2.1/search') do |faraday|
      faraday.params['lat'] = coordinates[:lat]
      faraday.params['lon'] = coordinates[:lng]
      faraday.params['radius'] = 5000
      faraday.params['q'] = type
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new(url: 'https://developers.zomato.com') do |faraday|
      faraday.headers['user-key'] = ENV['ZOMATO_API_KEY']
    end
  end
end
