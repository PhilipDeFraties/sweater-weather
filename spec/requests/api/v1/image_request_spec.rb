require 'rails_helper'

RSpec.describe 'Image Request' do
  feature 'requesting image for location' do
    scenario "client makes search request for image with result", :vcr do
      search_params = { location: 'denver, co' }
      get '/api/v1/backgrounds', params: search_params

      image = JSON.parse(response.body, symbolize_names: true)

      image_response_checker(image)
      expect(response.status).to eq(200)
      end
    end

  scenario "client makes search request for image yielding no result", :vcr do
    search_params = { location: '~' }
    get '/api/v1/backgrounds', params: search_params

    image = JSON.parse(response.body, symbolize_names: true)
    image_response_checker(image)
    expect(response.status).to eq(200)
    expect(image[:data][:attributes][:image][:image_url]).to eq('no results')
  end
end
