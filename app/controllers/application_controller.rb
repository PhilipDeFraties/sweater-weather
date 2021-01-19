class ApplicationController < ActionController::API
  def verify_api_key
    unless User.find_by(api_key: "#{road_trip_params[:api_key]}")
      render json: { message: 'Valid API key required', error: 'Unauthorized' },
               status: 401
    end
  end
end
