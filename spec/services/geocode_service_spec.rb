require 'rails_helper'

RSpec.describe GeocodeService do
  context 'route search' do
    it "returns appropriate data" do
      results = GeocodeService.get_route('denver,co', 'pueblo,co')

      expect(response.status).to eq(200)
      expect(results).to be_a(Hash)
      expect(results).to have_key(:route)
      expect(results[:route]).to have_key(:routeError)
      expect(results[:route][:routeError]).to be_a(Hash)
      expect(results[:route][:routeError]).to have_key(:errorCode)
      expect(results[:route][:routeError])
    end
  end
end
