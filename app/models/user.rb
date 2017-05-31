class User < ActiveRecord::Base
  has_secure_password    # requires bcrypt gem
end
