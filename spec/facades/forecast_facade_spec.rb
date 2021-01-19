require 'rails_helper'

RSpec.describe 'Forecast Facade' do
  it "returns a forecast poro when called with location as argument" do
    VCR.use_cassette('forecast/denver2') do
      forecast = ForecastFacade.get_forecast('denver,co')

      expect(forecast.class).to eq(Forecast)
      expect(forecast.current_weather.class).to eq(CurrentForecast)
      expect(forecast.current_weather.conditions).to be_a(String)
      expect(forecast.current_weather.datetime).to be_a(Time)
      expect(forecast.current_weather.feels_like).to be_a(Numeric)
      expect(forecast.current_weather.humidity).to be_an(Integer)
      expect(forecast.current_weather.icon).to be_a(String)
      expect(forecast.current_weather.sunrise).to be_a(Time)
      expect(forecast.current_weather.sunset).to be_a(Time)
      expect(forecast.current_weather.temperature).to be_a(Numeric)
      expect(forecast.current_weather.uvi).to be_a(Numeric)
      expect(forecast.current_weather.visibility).to be_an(Integer)
      expect(forecast.daily_weather).to be_an(Array)

      forecast.daily_weather.each do |forecast|
        expect(forecast).to be_a(DailyForecast)
        expect(forecast.conditions).to be_a(String)
        expect(forecast.date).to be_a(String)
        expect(forecast.icon).to be_a(String)
        expect(forecast.max_temp).to be_a(Numeric)
        expect(forecast.min_temp).to be_a(Numeric)
        expect(forecast.sunrise).to be_a(Time)
        expect(forecast.sunset).to be_a(Time)
      end

      forecast.hourly_weather.each do |forecast|
        expect(forecast).to be_a(HourlyForecast)
        expect(forecast.conditions).to be_a(String)
        expect(forecast.icon).to be_a(String)
        expect(forecast.temperature).to be_a(Numeric)
        expect(forecast.time).to be_a(String)
        expect(forecast.wind_direction).to be_a(String)
        expect(forecast.wind_speed).to be_a(String)
      end
    end
  end
end
