require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it { should validate_uniqueness_of(:email).case_insensitive  }
    it { should validate_presence_of :email }
    it { should have_secure_password }
  end

  before do
    @user = User.new(email: "user1@example.com",
                     password: "foobar", password_confirmation: "foobar")
  end

  subject { @user }

  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }

  it { should be_valid }

  describe "when password is not present" do
    before { @user.password = @user.password_confirmation = " " }
    it { should_not be_valid }
  end

  describe "when password doesn't match confirmation" do
    before { @user.password_confirmation = "mismatch" }
    it { should_not be_valid }
  end

  describe "when password confirmation is nil" do
    before { @user.password_confirmation = nil }
    it { should_not be_valid }
  end

  it ".set_api_key" do
    expect(@user.send(:set_api_key)).to be_a(String)
  end
end
