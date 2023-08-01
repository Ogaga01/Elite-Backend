class Car < ApplicationRecord
    has_many :car_reservations

  validates :name, presence: true
  validates :about, presence: true
  validates :image, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
