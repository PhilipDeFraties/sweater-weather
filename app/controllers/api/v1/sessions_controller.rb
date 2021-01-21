module Api
  module V1
    class SessionsController < ApplicationController
      def create
        user = User.find_by_email(login_params[:email].downcase)
        if user && user.authenticate(login_params[:password])
          session[:user_id] = user.id
          render json: UserSerializer.new(user), status: 200
        else
          render json: { message: 'Invalid Credentials', error: 'Failed Login' },
                   status: 401
        end
      end

      private

      def login_params
        JSON.parse(request.body.read, symbolize_names: true)
      end
    end
  end
end
