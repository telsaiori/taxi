class Car < ApplicationRecord
  has_many :profile_cars, dependent: :destroy
  has_many :profiles, through: :profile_cars
end
