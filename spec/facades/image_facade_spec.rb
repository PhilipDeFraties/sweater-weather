require 'rails_helper'

RSpec.describe 'Image Facade' do
  it "returns an image poro when called with location as argument" do
    VCR.use_cassette('image/denver2') do
      image = ImageFacade.get_image('denver,co')

      expect(image).to be_a(Image)
      expect(image.location).to be_a(String)
      expect(image.url).to be_a(String)
      expect(image.id).to eq(nil)
      expect(image.credit).to be_a(Hash)
      expect(image.credit[:source]).to be_a(String)
      expect(image.credit[:source]).to eq("unsplash.com")
      expect(image.credit[:username]).to be_a(String)
    end
  end
end
