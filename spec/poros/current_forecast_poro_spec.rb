require 'rails_helper'

RSpec.describe 'CurrentForecast' do
  it "creates a current forecast object from data returned by weather service" do
    weather_hash = {:dt=>1611098894,
     :sunrise=>1611065827,
     :sunset=>1611101043,
     :temp=>37,
     :feels_like=>29.66,
     :pressure=>1021,
     :humidity=>27,
     :dew_point=>8.91,
     :uvi=>0.18,
     :clouds=>44,
     :visibility=>10000,
     :wind_speed=>2.39,
     :wind_deg=>64,
     :weather=>[{:id=>802, :main=>"Clouds", :description=>"scattered clouds", :icon=>"03d"}]}

    forecast = CurrentForecast.new(weather_hash)
    current_forecast_checker(forecast)
  end
end
