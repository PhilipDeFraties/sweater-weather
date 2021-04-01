module Api
  module V1
    class UsersController < ApplicationController
      def create
        user = User.new(user_params)
        if user.save
          render json: UserSerializer.new(user), status: :created
        else
          render json: { message: user.errors.full_messages.to_sentence, error: 'Could not create user' },
                   status: :unprocessable_entity
        end
      end

      private

      def user_params
        JSON.parse(request.body.read, symbolize_names: true)
      end
    end
  end
end
