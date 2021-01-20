require 'rails_helper'

describe 'Image Request' do
  it "responds with appropriate data if an image is found" do
    VCR.use_cassette('image/denver') do
      image_params = { location: 'denver, co' }
      get '/api/v1/backgrounds', params: image_params

      image = JSON.parse(response.body, symbolize_names: true)

      image_response_checker(image)
      expect(response.status).to eq(200)
    end
  end

  it "responds with 'no results in url field if no image found" do
    VCR.use_cassette('image/empty') do
      image_params = { location: '~' }
      get '/api/v1/backgrounds', params: image_params

      image = JSON.parse(response.body, symbolize_names: true)
      image_response_checker(image)
      expect(response.status).to eq(200)
      expect(image[:data][:attributes][:image][:image_url]).to eq('no results')
    end
  end
end
