require 'rails_helper'

describe 'Roadtrip request' do
  it "returns appropriate data" do
    VCR.use_cassette('road_trip/denver_pueblo') do
      user = User.create!(email: "whatever@example.com",
                          password: "password",
                          password_confirmation: "password")
      roadtrip_params = {
        "origin": "Denver,CO",
        "destination": "Pueblo,CO",
        "api_key": "#{user.api_key}"
      }

      headers = { 'CONTENT_TYPE' => 'application/json' }

      post '/api/v1/road_trip', headers: headers, params: roadtrip_params, as: :json
      road_trip_response = JSON.parse(response.body, symbolize_names: true)

      road_trip_response_checker(road_trip_response)
      expect(response.status).to eq(200)
    end
  end
end
