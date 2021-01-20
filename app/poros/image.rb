class Image
  attr_reader :id,
              :location,
              :url,
              :credit

  def initialize(image_data, location)
    @id = nil
    @location = location
    @url = check_for_url(image_data)
    @credit = check_for_credit(image_data)
  end

  def check_for_url(image_data)
    unless image_data[:results].empty?
      image_data[:results].first[:urls][:regular]
    else
      "no results"
    end
  end

  def check_for_credit(image_data)
    unless image_data[:results].empty?
      { source: 'unsplash.com', username: image_data[:results].first[:user][:username] }
    else
      { source: 'unsplash.com', username: '' }
    end
  end
end
