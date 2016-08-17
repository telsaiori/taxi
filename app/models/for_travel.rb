class ForTravel < ApplicationRecord
  has_many :profile_for_travels
  has_many :profiles, through: :profile_for_travels
end
