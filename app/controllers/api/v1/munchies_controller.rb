module Api
  module V1
    class MunchiesController < ApplicationController
      def search
        munchies = MunchiesFacade.get_food_and_forecast(munchies_params)
        render json: MunchiesSerializer.new(munchies)
      end

      private

      def munchies_params
        params.permit(:start, :end, :food)
      end
    end
  end
end
