class AddMenuRefToFoodItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :food_items, :menu, null: false, foreign_key: true
  end
end
