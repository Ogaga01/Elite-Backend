class CreateAirplaneReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :airplane_reservations do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :location
      t.string :destination
      t.integer :total_price

      t.timestamps
    end
  end
end
