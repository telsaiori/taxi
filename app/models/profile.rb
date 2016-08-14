class Profile < ApplicationRecord
  has_many :cars, through: :profile_cars
  has_many :equiments, through: :profile_equiments
  has_many :profile_cars
  has_many :profile_equiments
  belongs_to :user
end
