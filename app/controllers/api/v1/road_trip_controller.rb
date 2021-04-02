module Api
  module V1
    class RoadTripController < ApplicationController
      before_action :verify_api_key
      def search
        road_trip = RoadTripFacade.plan_road_trip(road_trip_params)
        render json: RoadTripSerializer.new(road_trip)
      end

      private

      def road_trip_params
        JSON.parse(request.body.read, symbolize_names: true)
      end
    end
  end
end
