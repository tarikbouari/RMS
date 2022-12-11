class AddTableRefToReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :table, null: false, foreign_key: true
  end
end
