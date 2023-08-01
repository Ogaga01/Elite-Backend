class AddUserToCarReservation < ActiveRecord::Migration[7.0]
  def change
    add_reference :car_reservations, :user, null: false, foreign_key: true
  end
end
