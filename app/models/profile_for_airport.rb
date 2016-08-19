class ProfileForAirport < ApplicationRecord
  belongs_to :profile 
  belongs_to :for_airport
end
