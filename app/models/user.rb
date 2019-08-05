class User < ApplicationRecord
  has_many :projects
  has_many :posts
  has_many :reactions

  has_secure_password validations: true

  validates :email, presence: true, uniqueness: true

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
end
