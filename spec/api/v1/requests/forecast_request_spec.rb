require 'rails_helper'

RSpec.describe "Forecast" do
  it "returns the weather forecast for a city" do
    forecast_params = { location: 'denver, co' }
    headers = { 'CONTENT_TYPE' => 'application/json' }
    get '/api/v1/forecast', headers: headers, params: forecast_params

    weather_response = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(200)
    forecast_response_checker(weather_response)
  end
end
