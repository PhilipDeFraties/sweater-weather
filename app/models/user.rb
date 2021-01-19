class User < ApplicationRecord
  has_secure_password

  before_validation :downcase_email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  before_save :set_api_key
  validates :api_key, uniqueness: true

  private

  def set_api_key
    self.api_key = SecureRandom.base64.tr('+/=', 'Qrt')
  end

  def downcase_email
    self.email = email.downcase if email.present?
  end
end
