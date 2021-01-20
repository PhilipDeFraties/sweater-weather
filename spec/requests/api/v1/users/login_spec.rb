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

    it "valid credentials sent as request body, email is case insensitive" do
      user_params = { email: "WHATEVER@EXAMPLE.COM",
                      password: "password" }
      headers = { 'CONTENT_TYPE' => 'application/json' }

      post api_v1_sessions_path, headers: headers, params: user_params, as: :json
      login_response = JSON.parse(response.body, symbolize_names: true)

      expect(response.status).to eq(200)
      user_response_checker(login_response, @user)
    end
  end

  describe "Request unsuccessful and appropriate data returned if" do
    it "invalid password sent in request body" do
      user_params = { email: "whatever@example.com",
                      password: "incorrect" }
      headers = { 'CONTENT_TYPE' => 'application/json' }

      post api_v1_sessions_path, headers: headers, params: user_params, as: :json
      login_response = JSON.parse(response.body, symbolize_names: true)

      expect(response.status).to eq(401)
      error_response_checker(login_response)
      expect(login_response[:message]).to eq('Invalid Credentials')
      expect(login_response[:error]).to eq('Failed Login')
    end

    it "invalid email sent in request body" do
      user_params = { email: "incorrect@email.com",
                      password: "password" }
      headers = { 'CONTENT_TYPE' => 'application/json' }

      post api_v1_sessions_path, headers: headers, params: user_params, as: :json
      login_response = JSON.parse(response.body, symbolize_names: true)

      expect(response.status).to eq(401)
      error_response_checker(login_response)
      expect(login_response[:message]).to eq('Invalid Credentials')
      expect(login_response[:error]).to eq('Failed Login')
    end

    it "email left blank in request body" do
      user_params = { email: "",
                      password: "password" }
      headers = { 'CONTENT_TYPE' => 'application/json' }

      post api_v1_sessions_path, headers: headers, params: user_params, as: :json
      login_response = JSON.parse(response.body, symbolize_names: true)

      expect(response.status).to eq(401)
      error_response_checker(login_response)
      expect(login_response[:message]).to eq('Invalid Credentials')
      expect(login_response[:error]).to eq('Failed Login')
    end

    it "blank password sent in request body" do
      user_params = { email: "incorrect@email.com",
                      password: "" }
      headers = { 'CONTENT_TYPE' => 'application/json' }

      post api_v1_sessions_path, headers: headers, params: user_params, as: :json
      login_response = JSON.parse(response.body, symbolize_names: true)

      expect(response.status).to eq(401)
      error_response_checker(login_response)
      expect(login_response[:message]).to eq('Invalid Credentials')
      expect(login_response[:error]).to eq('Failed Login')
    end
  end
end
