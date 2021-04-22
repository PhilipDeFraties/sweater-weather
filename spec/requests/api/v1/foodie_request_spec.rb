require 'rails_helper'

RSpec.describe 'Foodie request' do
  feature 'Foodie request' do
    scenario "request made to foodie endpoint with valid params", :vcr do
      search_params = {
        start: "denver,co",
        end: "pueblo,co",
        search: "italian"
      }
      headers = { 'CONTENT_TYPE' => 'application/json' }
      post '/api/v1/foodie', headers: headers, params: search_params, as: :json

      foodie_response = JSON.parse(response.body, symbolize_names: true)
      expect(response.status).to eq(200)
      foodie_response_checker(foodie_response)
    end

    scenario "request made to foodie endpoint with valid params", :vcr do
      search_params = {
        start: "denver,co",
        end: "arvada,co",
        search: "sushi"
      }
      headers = { 'CONTENT_TYPE' => 'application/json' }

      post '/api/v1/foodie', headers: headers, params: search_params, as: :json
      foodie_response = JSON.parse(response.body, symbolize_names: true)

      expect(response.status).to eq(200)
      foodie_response_checker(foodie_response)
    end
  end
end
