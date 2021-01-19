require 'rails_helper'

RSpec.describe GeocodeService do
  context 'route search' do
    it "returns appropriate data" do
      results = GeocodeService.get_route('denver,co', 'pueblo,co')

      expect(results).to be_a(Hash)
      expect(results).to have_key(:route)
      expect(results[:route]).to have_key(:routeError)
      expect(results[:route][:routeError]).to be_a(Hash)
      expect(results[:route][:routeError]).to have_key(:errorCode)
      expect(results[:route][:routeError][:errorCode]).to eq(-400)
      expect(results[:route][:routeError]).to have_key(:message)
      expect(results[:route][:routeError][:message]).to eq("")
      expect(results[:route]).to have_key(:formattedTime)
      expect(results[:route][:formattedTime]).to be_a(String)
      expect(results[:route]).to have_key(:realTime)
      expect(results[:route][:realTime]).to be_an(Integer)
      expect(results[:route]).to have_key(:legs)
      expect(results[:route][:legs]).to be_an(Array)
      expect(results[:route][:legs].empty?).to eq(false)
      expect(results[:route]).to have_key(:locations)
      expect(results[:route][:locations]).to be_an(Array)
      expect(results[:route][:locations].count).to eq(2)
      expect(results[:route][:locations][0]).to be_a(Hash)
      expect(results[:route][:locations][0]).to have_key(:adminArea5)
      expect(results[:route][:locations][0][:adminArea5]).to eq("Denver")
      expect(results[:route][:locations][1]).to be_a(Hash)
      expect(results[:route][:locations][1]).to have_key(:adminArea5)
      expect(results[:route][:locations][1][:adminArea5]).to eq("Pueblo")
      expect(results[:route][:locations][1]).to have_key(:latLng)
      expect(results[:route][:locations][1][:latLng]).to be_a(Hash)
      expect(results[:route][:locations][1][:latLng]).to have_key(:lng)
      expect(results[:route][:locations][1][:latLng][:lng]).to eq(-104.610415)
      expect(results[:route][:locations][1][:latLng]).to have_key(:lat)
      expect(results[:route][:locations][1][:latLng][:lat]).to eq(38.265425)
    end
  end
end
