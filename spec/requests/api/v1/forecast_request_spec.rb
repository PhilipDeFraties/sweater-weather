require 'rails_helper'

RSpec.describe "Forecast" do
  feature "requesting forecast" do
    scenario "client makes request for weather forecast for a city", :vcr do
      forecast_params = { location: 'denver, co' }
      headers = { 'CONTENT_TYPE' => 'application/json' }

      get '/api/v1/forecast', headers: headers, params: forecast_params
      weather_response = JSON.parse(response.body, symbolize_names: true)

      expect(response.status).to eq(200)
      forecast_response_checker(weather_response)
    end
  end

  it "responds with error if query param is empty" do
    request_params = { location: '' }
    headers = { 'CONTENT_TYPE' => 'application/json' }

    get '/api/v1/forecast', headers: headers, params: request_params
    error_response = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(400)
    error_response_checker(error_response)
    expect(error_response[:error]).to eq("missing parameter")
    expect(error_response[:message]).to eq("Location parameter with value required in search request")
  end
end
