class AddUserToAirplaneReservation < ActiveRecord::Migration[7.0]
  def change
    add_reference :airplane_reservations, :user, null: false, foreign_key: true
  end
end
