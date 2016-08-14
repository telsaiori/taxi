class Car < ApplicationRecord
  has_many :profile_cars
  has_many :profiles, through: :profile_cars
end
