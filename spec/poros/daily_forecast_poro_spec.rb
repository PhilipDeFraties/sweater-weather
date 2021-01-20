require 'rails_helper'

RSpec.describe 'DailyForecast' do
  it "creates a daily forecast object from data returned by weather service" do
    weather_hash = {:dt=>1611082800,
      :sunrise=>1611065827,
      :sunset=>1611101043,
      :temp=>{:day=>32.68, :min=>28.22, :max=>37, :night=>31.93, :eve=>34.61, :morn=>28.94},
      :feels_like=>{:day=>25.59, :night=>25.02, :eve=>28.42, :morn=>23.29},
      :pressure=>1032,
      :humidity=>73,
      :dew_point=>7.7,
      :wind_speed=>4.63,
      :wind_deg=>166,
      :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04d"}],
      :clouds=>100,
      :pop=>0.39,
      :uvi=>1.87}

      forecast = DailyForecast.new(weather_hash)
      daily_forecast_checker(forecast)
  end
end
