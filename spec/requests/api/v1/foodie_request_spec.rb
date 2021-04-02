require 'rails_helper'

describe 'Foodie request' do
  feature 'Foodie request' do
    scenario "request made to foodie endpoint with valid params", :vcr do
      # VCR.use_cassette('foodie/italian') do
      foodie_params = {
        start: "denver,co",
        end: "pueblo,co",
        search: "italian"
      }
      headers = { 'CONTENT_TYPE' => 'application/json' }

      post '/api/v1/foodie', headers: headers, params: foodie_params, as: :json
      # get '/api/v1/foodie', params: foodie_params
      foodie_response = JSON.parse(response.body, symbolize_names: true)
      expect(response.status).to eq(200)
      expect(foodie_response).to be_a(Hash)
      expect(foodie_response).to have_key(:data)
      expect(foodie_response[:data]).to be_a(Hash)
      expect(foodie_response[:data]).to have_key(:id)
      expect(foodie_response[:data][:id]).to eq(nil)
      expect(foodie_response[:data]).to have_key(:type)
      expect(foodie_response[:data][:type]).to be_a(String)
      expect(foodie_response[:data][:type]).to eq('foodie')
      expect(foodie_response[:data]).to have_key(:attributes)
      expect(foodie_response[:data][:attributes]).to be_a(Hash)
      expect(foodie_response[:data][:attributes]).to have_key(:end_location)
      expect(foodie_response[:data][:attributes][:end_location]).to be_a(String)
      expect(foodie_response[:data][:attributes]).to have_key(:forecast)
      expect(foodie_response[:data][:attributes][:forecast]).to be_a(Hash)
      expect(foodie_response[:data][:attributes][:forecast]).to have_key(:summary)
      expect(foodie_response[:data][:attributes][:forecast][:summary]).to be_a(String)
      expect(foodie_response[:data][:attributes][:forecast]).to have_key(:temperature)
      expect(foodie_response[:data][:attributes][:forecast][:temperature]).to be_a(String)
      expect(foodie_response[:data][:attributes]).to have_key(:restaurant)
      expect(foodie_response[:data][:attributes][:restaurant]).to be_a(Hash)
      expect(foodie_response[:data][:attributes][:restaurant]).to have_key(:name)
      expect(foodie_response[:data][:attributes][:restaurant][:name]).to be_a(String)
      expect(foodie_response[:data][:attributes][:restaurant]).to have_key(:address)
      expect(foodie_response[:data][:attributes][:restaurant][:address]).to be_a(String)
    end

    scenario "request made to foodie endpoint with valid params", :vcr do
      # VCR.use_cassette('foodie/sushi2') do
      foodie_params = {
        start: "denver,co",
        end: "arvada,co",
        search: "sushi"
      }
      headers = { 'CONTENT_TYPE' => 'application/json' }

      post '/api/v1/foodie', headers: headers, params: foodie_params, as: :json
      # get '/api/v1/foodie', params: foodie_params
      foodie_response = JSON.parse(response.body, symbolize_names: true)
      expect(response.status).to eq(200)
      expect(foodie_response).to be_a(Hash)
      expect(foodie_response).to have_key(:data)
      expect(foodie_response[:data]).to be_a(Hash)
      expect(foodie_response[:data]).to have_key(:id)
      expect(foodie_response[:data][:id]).to eq(nil)
      expect(foodie_response[:data]).to have_key(:type)
      expect(foodie_response[:data][:type]).to be_a(String)
      expect(foodie_response[:data][:type]).to eq('foodie')
      expect(foodie_response[:data]).to have_key(:attributes)
      expect(foodie_response[:data][:attributes]).to be_a(Hash)
      expect(foodie_response[:data][:attributes]).to have_key(:end_location)
      expect(foodie_response[:data][:attributes][:end_location]).to be_a(String)
      expect(foodie_response[:data][:attributes]).to have_key(:forecast)
      expect(foodie_response[:data][:attributes][:forecast]).to be_a(Hash)
      expect(foodie_response[:data][:attributes][:forecast]).to have_key(:summary)
      expect(foodie_response[:data][:attributes][:forecast][:summary]).to be_a(String)
      expect(foodie_response[:data][:attributes][:forecast]).to have_key(:temperature)
      expect(foodie_response[:data][:attributes][:forecast][:temperature]).to be_a(String)
      expect(foodie_response[:data][:attributes]).to have_key(:restaurant)
      expect(foodie_response[:data][:attributes][:restaurant]).to be_a(Hash)
      expect(foodie_response[:data][:attributes][:restaurant]).to have_key(:name)
      expect(foodie_response[:data][:attributes][:restaurant][:name]).to be_a(String)
      expect(foodie_response[:data][:attributes][:restaurant]).to have_key(:address)
      expect(foodie_response[:data][:attributes][:restaurant][:address]).to be_a(String)
    end
  end
end
