class Food < ApplicationRecord

  validates :name, :category, presence: true

  has_many :claimed_foods

end
