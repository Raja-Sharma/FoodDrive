class CreateClaimedFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :claimed_foods do |t|
      t.references :user, foreign_key: true
      t.references :food, foreign_key: true

      t.timestamps
    end
  end
end
