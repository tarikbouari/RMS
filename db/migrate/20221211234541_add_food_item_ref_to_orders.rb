class AddFoodItemRefToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :food_item, null: false, foreign_key: true
  end
end
