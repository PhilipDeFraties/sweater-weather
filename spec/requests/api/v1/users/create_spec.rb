require 'rails_helper'

RSpec.describe "User creation" do
  it "creates a user via post request and responds with appropriate data" do
    user_params = { email: "whatever@example.com",
                    password: "password",
                    password_confirmation: "password" }
    headers = { 'CONTENT_TYPE' => 'application/json' }
    post '/api/v1/users', headers: headers, params: user_params, as: :json

    creation_response = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(201)
    user_response_checker(creation_response, User.last)
  end
end
