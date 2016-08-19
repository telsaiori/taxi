class ForAirport < ApplicationRecord
  has_many :profiles, through: :profile_for_airports
  has_many :profile_for_airports
end
