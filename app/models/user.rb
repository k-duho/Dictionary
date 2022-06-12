class User < ActiveRecord::Base
  has_secure_password validations: true

  validates :mail, presence: true, uniqueness: true
end
