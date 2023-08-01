class AirplaneReservation < ApplicationRecord
    belongs_to :user
    belongs_to :airplane
  
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :location, presence: true
    validates :destination, presence: true
    validates :total_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
