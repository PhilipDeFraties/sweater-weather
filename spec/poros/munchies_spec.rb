require 'rails_helper'

RSpec.describe Munchies do
  it 'can create a munchies object' do
    route_data = File.read('spec/fixtures/route_data.rb')
    weather_data = File.read('spec/fixtures/weather_data.rb')
    restaurant_data = File.read('spec/fixtures/restaurant_data')

  end
end
