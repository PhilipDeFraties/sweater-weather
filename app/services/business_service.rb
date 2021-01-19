class BusinessService
  def self.conn
    Faraday.new(url: 'https://api.yelp.com')
  end

  def self.find_food(query_data)
    response = conn.get('') do |faraday|
      
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
