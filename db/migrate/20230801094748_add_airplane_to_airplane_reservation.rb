class AddAirplaneToAirplaneReservation < ActiveRecord::Migration[7.0]
  def change
    add_reference :airplane_reservations, :airplane, null: false, foreign_key: true
  end
end
