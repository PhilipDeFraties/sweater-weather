module Api
  module V1
    class ImageController < ApplicationController
      def search
        image = ImageFacade.get_image(image_params[:location])
        render json: ImageSerializer.new(image)
      end

      private

      def image_params
        params.permit(:location)
      end
    end
  end
end
