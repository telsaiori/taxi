class ProfileCar < ApplicationRecord
  belongs_to :car
  belongs_to :profile
end
