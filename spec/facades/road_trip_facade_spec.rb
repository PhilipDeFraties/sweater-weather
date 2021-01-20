require 'rails_helper'

RSpec.describe 'RoadTrip Facade' do
  it "returns a roadtrip object when fed origin, dest, and api key as arguments" do
    VCR.use_cassette('road_trip/denver_pueblo2') do
      user = User.create!(email: "whatever@example.com",
                          password: "password",
                          password_confirmation: "password")
      roadtrip_params = { "origin": "Denver,CO",
                          "destination": "Pueblo,CO",
                          "api_key": "#{user.api_key}" }

      roadtrip = RoadTripFacade.plan_road_trip(roadtrip_params)

      roadtrip_checker(roadtrip)
    end
  end
end
