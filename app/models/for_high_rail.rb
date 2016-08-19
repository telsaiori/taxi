class ForHighRail < ApplicationRecord
  has_many :profiles, through: :profile_for_high_rail
  has_many :profile_for_high_rails, foreign_key: :for_hr_id
end
