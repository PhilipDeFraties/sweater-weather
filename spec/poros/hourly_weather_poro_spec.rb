require 'rails_helper'

RSpec.describe 'HourlyForecast' do
  it "creates an hourly forecast object from data returned by weather service" do
    weather_hash = {:dt=>1611097200,
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
      :weather=>[{:id=>802, :main=>"Clouds", :description=>"scattered clouds", :icon=>"03d"}],
      :pop=>0}

    forecast = HourlyForecast.new(weather_hash)
    hourly_forecast_checker(forecast)
  end
end
