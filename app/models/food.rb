class Food < ApplicationRecord

  validates :name, :category, :donor, presence: true

  belongs_to :donor, class_name: "User", foreign_key: "user_id"

  has_many :claimed_foods

end
