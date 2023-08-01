class Airplane < ApplicationRecord
    has_many :airplane_reservations

    validates :name, presence: true
    validates :about, presence: true
    validates :image, presence: true
    validates :crew, presence: true, numericality: { greater_than: 0 }
    validates :cabin, presence: true, numericality: { greater_than: 0 }
    validates :baggage, presence: true, numericality: { greater_than: 0 }
    validates :capacity, presence: true, numericality: { greater_than: 0 }
    validates :seat, presence: true, numericality: { greater_than: 0 }
    validates :price, presence: true, numericality: { greater_than: 0 }
end
