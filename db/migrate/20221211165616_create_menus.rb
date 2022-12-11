class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|

      t.timestamps
    end
  end
end
