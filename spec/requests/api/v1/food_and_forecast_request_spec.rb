require 'rails_helper'

describe 'Food and Forecast request' do
  it "returns appropriate data" do
    food_and_forecast_params = {
      start: "denver,co",
      end: "pueblo,co",
      food: "chinese"
    }

    get '/api/v1/munchies', params: food_and_forecast_params
    food_and_forecast_response = JSON.parse(response.body, symbolize_names: true)

    road_trip_response_checker(food_and_forecast_response)
    expect(response.status).to eq(200)
  end
end
