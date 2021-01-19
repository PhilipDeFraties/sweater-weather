module Api
  module V1
    class ImageController < ApplicationController
      def search
        image = ImageFacade.get_image(params[:location])
        render json: ImageSerializer.new(image)
      end
    end
  end
end
