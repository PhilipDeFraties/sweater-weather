require 'rails_helper'

describe 'Munchies request' do
  it "returns appropriate data" do
    munchies_params = {
      start: "denver,co",
      end: "pueblo,co",
      food: "chinese"
    }

    get '/api/v1/munchies', params: munchies_params
    munchies_response = JSON.parse(response.body, symbolize_names: true)

    road_trip_response_checker(munchies_response)
    expect(response.status).to eq(200)
  end
end
