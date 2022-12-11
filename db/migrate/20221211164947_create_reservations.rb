class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :reservation_time
      t.integer :number_of_people

      t.timestamps
    end
  end
end
