module Api
  module V1
    class ForecastController < ApplicationController
      def search
        forecast = ForecastFacade.get_forecast(params[:location])
        render json: ForecastSerializer.new(forecast)
      end
    end
  end
end
