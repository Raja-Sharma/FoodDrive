class Food < ApplicationRecord

  validates :name, :category, presence: true

end
