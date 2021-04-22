require 'rails_helper'

RSpec.describe WeatherService do
  context 'forecast search' do
    scenario "returns appropriate data", :vcr do
      coordinates = {lat: 38.2654, lng: -104.6104}
      results = WeatherService.find_forecast(coordinates)

      expect(results).to have_key(:lat)
      expect(results[:lat]).to eq(coordinates[:lat])
      expect(results).to have_key(:lon)
      expect(results[:lon]).to eq(coordinates[:lng])
      expect(results).to have_key(:current)
      expect(results[:current]).to be_a(Hash)
      expect(results).to have_key(:hourly)
      expect(results[:hourly]).to be_an(Array)
      expect(results[:hourly].count).to eq(48)
      expect(results).to have_key(:daily)
      expect(results[:daily].count).to eq(8)
    end
  end
end
