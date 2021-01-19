class Image
  attr_reader :id,
              :location,
              :url,
              :credit

  def initialize(image_data, location)
    @id = nil
    @location = location
    @url = image_data[:results].first[:urls][:regular]
    @credit = { source: 'unsplash.com', username: image_data[:results].first[:user][:username] }
  end
end
