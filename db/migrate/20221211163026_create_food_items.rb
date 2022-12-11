class CreateFoodItems < ActiveRecord::Migration[7.0]
  def change
    create_table :food_items do |t|
      t.string :title
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
