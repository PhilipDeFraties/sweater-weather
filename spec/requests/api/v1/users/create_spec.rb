require 'rails_helper'

RSpec.describe "User creation" do
  it "creates a user via post request and responds with appropriate data" do
    user_params = { email: "whatever@example.com",
                    password: "password",
                    password_confirmation: "password" }
    headers = { 'CONTENT_TYPE' => 'application/json' }
    post '/api/v1/users', headers: headers, params: user_params, as: :json

    creation_response = JSON.parse(response.body, symbolize_names: true)
    binding.pry
    expect(response.status).to eq(201)
    user_response_checker(creation_response, User.last)
  end

  it "email is saved as downcase, responds with appropriate data" do
    user_params = { email: "WHATEVER@EXAMPLE.COM",
                    password: "password",
                    password_confirmation: "password" }
    headers = { 'CONTENT_TYPE' => 'application/json' }
    post '/api/v1/users', headers: headers, params: user_params, as: :json

    creation_response = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(201)
    user_response_checker(creation_response, User.last)
    expect(creation_response[:data][:attributes][:email]).to eq(user_params[:email].downcase)
  end

  it "responds with error if email not formatted correctly" do
    user_params = { email: "whateveratexample.com",
                    password: "password",
                    password_confirmation: "password" }
    headers = { 'CONTENT_TYPE' => 'application/json' }
    post api_v1_users_path, headers: headers, params: user_params, as: :json

    creation_response = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(422)
    error_response_checker(creation_response)
    expect(creation_response[:message]).to eq('Email is invalid')
    expect(creation_response[:error]).to eq('Could not create user')
  end

  it "responds with error if email already taken" do
    User.create!( email: "whatever@example.com",
                  password: "password",
                  password_confirmation: "password" )

    user_params = { email: "whatever@example.com",
                    password: "password",
                    password_confirmation: "password" }
    headers = { 'CONTENT_TYPE' => 'application/json' }
    post api_v1_users_path, headers: headers, params: user_params, as: :json

    creation_response = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(422)
    error_response_checker(creation_response)
    expect(creation_response[:message]).to eq('Email has already been taken')
    expect(creation_response[:error]).to eq('Could not create user')
  end

  it "responds with error if passwords don't match" do
    user_params = { email: "whatever@example.com",
                    password: "password",
                    password_confirmation: "assword" }
    headers = { 'CONTENT_TYPE' => 'application/json' }
    post api_v1_users_path, headers: headers, params: user_params, as: :json

    creation_response = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(422)
    error_response_checker(creation_response)
    expect(creation_response[:message]).to eq("Password confirmation doesn't match Password")
    expect(creation_response[:error]).to eq('Could not create user')
  end

  it "responds with error if email is blank" do
    user_params = { email: "",
                    password: "password",
                    password_confirmation: "password" }
    headers = { 'CONTENT_TYPE' => 'application/json' }
    post api_v1_users_path, headers: headers, params: user_params, as: :json

    creation_response = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(422)
    error_response_checker(creation_response)
    expect(creation_response[:message]).to eq("Email can't be blank and Email is invalid")
    expect(creation_response[:error]).to eq('Could not create user')
  end

  it "responds with error if password blank" do
    user_params = { email: "whatever@example.com",
                    password: "",
                    password_confirmation: "password" }
    headers = { 'CONTENT_TYPE' => 'application/json' }
    post api_v1_users_path, headers: headers, params: user_params, as: :json

    creation_response = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(422)
    error_response_checker(creation_response)
    expect(creation_response[:message]).to eq("Password can't be blank, Password can't be blank, and Password is too short (minimum is 6 characters)")
    expect(creation_response[:error]).to eq('Could not create user')
  end

  it "responds with error if password confirmation is blank" do
    user_params = { email: "whatever@example.com",
                    password: "password",
                    password_confirmation: "" }
    headers = { 'CONTENT_TYPE' => 'application/json' }
    post api_v1_users_path, headers: headers, params: user_params, as: :json

    creation_response = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(422)
    error_response_checker(creation_response)
    expect(creation_response[:message]).to eq("Password confirmation doesn't match Password and Password confirmation can't be blank")
    expect(creation_response[:error]).to eq('Could not create user')
  end

  it "responds with error if password is too short" do
    user_params = { email: "whatever@example.com",
                    password: "pass",
                    password_confirmation: "pass" }
    headers = { 'CONTENT_TYPE' => 'application/json' }
    post api_v1_users_path, headers: headers, params: user_params, as: :json

    creation_response = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(422)
    error_response_checker(creation_response)
    expect(creation_response[:message]).to eq("Password is too short (minimum is 6 characters)")
    expect(creation_response[:error]).to eq('Could not create user')
  end
end
