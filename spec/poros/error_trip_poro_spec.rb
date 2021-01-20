require 'rails_helper'

RSpec.describe 'ErrorTrip' do
  it "creates an error trip object if a road trips route is impossible" do
    query_params = {:origin=>"Denver,CO", :destination=>"London,UK"}

    error_trip = ErrorTrip.new(query_params)
    error_trip_obj_checker(error_trip)
  end
end
