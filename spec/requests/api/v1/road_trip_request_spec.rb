require 'rails_helper'

RSpec.describe 'Roadtrip request' do
  before :each do
    @user = User.create!(email: "whatever@example.com",
      password: "password",
      password_confirmation: "password")
  end

  feature "roadtrip" do
    scenario "returns roadtrip info in json if route is possible", :vcr do
      search_params = {
        "origin": "Denver,CO",
        "destination": "Pueblo,CO",
        "api_key": "#{@user.api_key}"
      }
      headers = { 'CONTENT_TYPE' => 'application/json' }

      post '/api/v1/road_trip', headers: headers, params: search_params, as: :json
      road_trip_response = JSON.parse(response.body, symbolize_names: true)

      road_trip_response_checker(road_trip_response)
      expect(response.status).to eq(200)
    end

    scenario "returns empty weather and travel time: impossible if no route", :vcr do
      search_params = {
        "origin": "Denver,CO",
        "destination": "London,UK",
        "api_key": "#{@user.api_key}"
      }
      headers = { 'CONTENT_TYPE' => 'application/json' }

      post '/api/v1/road_trip', headers: headers, params: search_params, as: :json
      error_trip_response = JSON.parse(response.body, symbolize_names: true)

      error_trip_checker(error_trip_response)
      expect(response.status).to eq(200)
    end
  end
end
