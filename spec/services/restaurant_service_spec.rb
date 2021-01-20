require 'rails_helper'

RSpec.describe RestaurantService do
  context 'restaurant search' do
    it "restaurants for given coordinates and type" do
      VCR.use_cassette('restaurant_service/denver1') do
        coordinates = {lat: 38.2654, lng: -104.6104}
        type = 'chinese'

        restaurant_data = RestaurantService.find_restaurants(coordinates, type)

        expect(restaurant_data).to be_a(Hash)
        expect(restaurant_data).to have_key(:results_found)
        expect(restaurant_data[:results_found]).to be_an(Integer)
        expect(restaurant_data).to have_key(:results_start)
        expect(restaurant_data[:results_start]).to be_an(Integer)
        expect(restaurant_data).to have_key(:results_shown)
        expect(restaurant_data[:results_shown]).to be_an(Integer)
        expect(restaurant_data).to have_key(:restaurants)
        expect(restaurant_data[:restaurants]).to be_an(Array)
        expect(restaurant_data[:restaurants].first).to be_a(Hash)
        expect(restaurant_data[:restaurants].first).to have_key(:restaurant)
        expect(restaurant_data[:restaurants].first[:restaurant]).to be_a(Hash)
        expect(restaurant_data[:restaurants].first[:restaurant]).to have_key(:name)
        expect(restaurant_data[:restaurants].first[:restaurant][:name]).to be_a(String)
        expect(restaurant_data[:restaurants].first[:restaurant]).to have_key(:location)
        expect(restaurant_data[:restaurants].first[:restaurant][:location]).to be_a(Hash)
        expect(restaurant_data[:restaurants].first[:restaurant][:location]).to have_key(:address)
        expect(restaurant_data[:restaurants].first[:restaurant]).to have_key(:cuisines)
        expect(restaurant_data[:restaurants].first[:restaurant][:cuisines]).to eq('Chinese')
      end
    end
  end
end
