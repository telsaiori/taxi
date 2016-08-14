class Equiment < ApplicationRecord
  has_many :profile_equiments
  has_many :profiles, through: :profile_equiments
end
