require 'rails_helper'

RSpec.describe ImageService do
  context 'image search' do
    scenario "returns appropriate data", :vcr do
      image = ImageService.get_image('denver,co')

      expect(image).to be_a(Hash)
      expect(image).to have_key(:total)
      expect(image[:total]).to be_an(Integer)
      expect(image).to have_key(:results)
      expect(image[:results]).to be_an(Array)
      expect(image[:results][0]).to have_key(:urls)
      expect(image[:results][0][:urls]).to be_a(Hash)
      expect(image[:results][0][:urls]).to have_key(:regular)
      expect(image[:results][0][:urls][:regular]).to be_a(String)
      expect(image[:results][0]).to have_key(:user)
      expect(image[:results][0][:user]).to be_a(Hash)
      expect(image[:results][0][:user]).to have_key(:username)
      expect(image[:results][0][:user][:username]).to be_a(String)
    end
  end
end
