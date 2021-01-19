class BusinessService
  def self.conn
    Faraday.new(url: 'https://api.yelp.com')
  end

  def self.find_food(type, location, time)
    response = conn.get('/v3/businesses/search') do |faraday|
      faraday.params['term'] = 'restaurants'
      faraday.params['location'] = location
      faraday.params['open_at'] = time
      faraday.params['categories'] = type
      faraday.headers["Authorization"] = 'Bearer 4PUZ7qouz08KV23ls8BV-ZRnzKDiHkl3a4fxMMCddyAlgG8ef5X5RbJ8mdQDWAbeGNmr1qKvXlBGKkhMZo0DqV74b-6Pt-L5auLMgp9Qpes6S00PvjjJg0836-gFYHYx'
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
