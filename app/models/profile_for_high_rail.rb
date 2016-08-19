class ProfileForHighRail < ApplicationRecord
  belongs_to :for_high_rail, foreign_key: :for_hr_id
  belongs_to :profile
end
