module Api
  module V1
    class RoadTripController < ApplicationController
      def search
        verify_api_key(road_trip_params[:api_key])
        road_trip = RoadTripFacade.plan_road_trip(road_trip_params)
        render json: RoadTripSerializer.new(road_trip)
      end

      private

      def road_trip_params
        params.permit(:origin, :destination, :api_key)
      end
    end
  end
end
