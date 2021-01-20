require 'rails_helper'

RSpec.describe 'Foodie Facade' do
  it "returns a foodie object when passed locations and type" do
    VCR.use_cassette('foodie_facade/italian') do
      foodie_params = {
        start: "denver,co",
        end: "pueblo,co",
        search: "italian"
      }

      foodie = FoodieFacade.get_restaurant_and_forecast(foodie_params)
      expect(foodie).to be_a(Foodie)
    end
  end
end
