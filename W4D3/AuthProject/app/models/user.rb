require 'SecureRandom'

class User < ApplicationRecord

  validates :username, :session_token, presence: true
  validates :password_digest, length: {minimum: 6, allow_nil: true,
    message: "Password can't be blanked" }, presence: true

  def self.find_by_credentials(username, password)
    User.find(username: username, password: password)
  end

  def self.generate_session_token
    session_token = SecureRandom.urlsafe_base64
  end

  def reset_session_token!
    User
    session_token = SecureRandom::urlsafe_base64

  end

  def ensure_session_token

  end

  def password=

  end


end
