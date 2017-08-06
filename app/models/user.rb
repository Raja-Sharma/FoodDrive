class User < ApplicationRecord

  validates :email, presence: true, uniqueness: true
  validates :username, :password, presence: true

  has_many :claimed_foods

  has_secure_password

end
