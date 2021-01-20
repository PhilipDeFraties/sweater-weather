require 'rails_helper'

RSpec.describe 'Image Facade' do
  it "returns an image poro when called with location as argument" do
    VCR.use_cassette('image/denver2') do
      image = ImageFacade.get_image('denver,co')

      image_checker(image)
    end
  end
end
