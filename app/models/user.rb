class User < ActiveRecord::Base
  has_secure_password    # requires bcrypt gem
  validates :email, :presence => true
  has_many :posts
end
