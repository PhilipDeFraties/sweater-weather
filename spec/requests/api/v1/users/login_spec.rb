require 'rails_helper'

RSpec.describe "User Login" do

  before :each do
    @user = User.create!(email: "whatever@example.com",
                        password: "password",
                        password_confirmation: "password")
  end

  describe 'Request successful and appropriate data is returned if' do
    it "valid credentials sent as request body" do
      user_params = { email: "whatever@example.com",
                      password: "password" }
      headers = { 'CONTENT_TYPE' => 'application/json' }

      post '/api/v1/sessions', headers: headers, params: user_params, as: :json
      login_response = JSON.parse(response.body, symbolize_names: true)

      expect(response.status).to eq(200)
      user_response_checker(login_response, @user)
    end
  end
end
