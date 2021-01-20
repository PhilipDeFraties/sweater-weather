class ImageService
  def self.get_image(location)
    response = conn.get('/search/photos?') do |faraday|
      faraday.params['query'] = location
      faraday.params['per_page'] = 1
      faraday.params['client_id'] = ENV['UNSPLASH_API_KEY']
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: 'https://api.unsplash.com')
  end
end
