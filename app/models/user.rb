class User < ActiveRecord::Base
  has_secure_password
  validates :username, :email, presence: true

  has_many :reviews
  has_many :products, through: :reviews
end
