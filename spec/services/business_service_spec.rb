require 'rails_helper'

RSpec.describe BusinessService do
  context 'food search' do
    it "returns appropriate data" do
      type = 'chinese'
      location = 'pueblo,co'
      time = Time.now.to_i
      results = BusinessService.find_food(type, location, time)

      expect(results).to be_a(Hash)
      expect(results).to have_key(:businesses)
      expect(results[:businesses]).to be_an(Array)
      expect(results[:businesses].first).to be_a(Hash)
      expect(results[:businesses].first).to have_key(:name)
      expect(results[:businesses].first[:name]).to be_a(String)
      expect(results[:businesses].first).to have_key(:is_closed)
      expect(results[:businesses].first[:is_closed]).to eq(false)
      expect(results[:businesses].first).to have_key(:location)
      expect(results[:businesses].first[:location]).to be_a(Hash)
      expect(results[:businesses].first[:location]).to have
    end
  end
end
