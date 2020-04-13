class User < ApplicationRecord
  before_create :create_remember_token
  has_many :posts

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :name, presence: true, uniqueness: true, :length => { :in => 3..20 }
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX}
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password

  private 
  def create_remember_token
    s = SecureRandom.urlsafe_base64
    self.remember_token = Digest::SHA1.hexdigest s
  end
end
