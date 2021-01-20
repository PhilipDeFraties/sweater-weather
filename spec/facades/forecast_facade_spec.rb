require 'rails_helper'

RSpec.describe 'Forecast Facade' do
  it "returns a forecast poro when called with location as argument" do
    VCR.use_cassette('forecast/denver2') do
      forecast = ForecastFacade.get_forecast('denver,co')

      forecast_checker(forecast)
    end
  end
end
