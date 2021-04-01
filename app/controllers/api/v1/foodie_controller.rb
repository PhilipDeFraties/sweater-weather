module Api
  module V1
    class FoodieController < ApplicationController
      def search
        foodie = FoodieFacade.get_restaurant_and_forecast(foodie_params)
        render json: FoodieSerializer.new(foodie)
      end

      private

      def foodie_params
        params.permit(:start, :end, :search)
      end
    end
  end
end
