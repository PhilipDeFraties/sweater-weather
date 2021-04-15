require 'rails_helper'

describe 'Roadtrip request' do
  before :each do
    @user = User.create!(email: "whatever@example.com",
      password: "password",
      password_confirmation: "password")
  end

  feature "roadtrip" do
    it "returns roadtrip info in json if route is possible" do
      VCR.use_cassette('road_trip/denver_pueblo') do
        roadtrip_params = {
          "origin": "Denver,CO",
          "destination": "Pueblo,CO",
          "api_key": "#{@user.api_key}"
        }

        headers = { 'CONTENT_TYPE' => 'application/json' }

        post '/api/v1/road_trip', headers: headers, params: roadtrip_params, as: :json
        road_trip_response = JSON.parse(response.body, symbolize_names: true)

        road_trip_response_checker(road_trip_response)
        expect(response.status).to eq(200)
      end
    end
  end

  scenario "returns empty weather and travel time: impossible if no route", :vcr do
    # VCR.use_cassette('road_trip/impossible') do
      roadtrip_params = {
        "origin": "Denver,CO",
        "destination": "London,UK",
        "api_key": "#{@user.api_key}"
      }

      headers = { 'CONTENT_TYPE' => 'application/json' }

      post '/api/v1/road_trip', headers: headers, params: roadtrip_params, as: :json
      error_trip_response = JSON.parse(response.body, symbolize_names: true)

      error_trip_checker(error_trip_response)
      expect(response.status).to eq(200)
  end
end
