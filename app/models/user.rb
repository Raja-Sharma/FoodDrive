class User < ApplicationRecord

  validates :email, presence: true, uniqueness: true
  validates :username, :password, presence: true

  has_many :claimed_foods
  has_many :donations, class_name: "Food"

  has_secure_password

end
