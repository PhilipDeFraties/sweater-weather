class ImageSerializer
  include FastJsonapi::ObjectSerializer
  set_id :id
  attribute :image do |image|
    {
      location: image.location,
      image_url: image.url,
      credit: image.credit
    }
  end
end
