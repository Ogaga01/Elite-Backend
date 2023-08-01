class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :api

         has_many :car_reservations
         has_many :airplane_reservations
       
         validates :name, presence: true
         validates :email, presence: true
         validates :telephone, presence: true
end
