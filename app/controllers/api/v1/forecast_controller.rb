module Api
  module V1
    class ForecastController < ApplicationController
      def search
        unless params[:location].empty?
          forecast = ForecastFacade.get_forecast(params[:location])
          render json: ForecastSerializer.new(forecast)
        else
          render json: { error: 'missing parameter',
                         message: "Location parameter with value required in search request" },
            status: 400
        end
      end
    end
  end
end
