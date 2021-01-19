class BusinessService
  def self.conn
    Faraday.new(url: 'https://api.yelp.com')
  end

  def self.find_food(type, location, time)
    response = conn.get('/v3/businesses/search') do |faraday|
      faraday.params['term'] = 'restaurants'
      faraday.params['location'] = location
      faraday.params['open_at'] = (time + Time.now.to_i)
      faraday.params['categories'] = type
      faraday.headers["Authorization"] = ENV['YELP_API_KEY']
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
