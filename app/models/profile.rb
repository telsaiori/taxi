class Profile < ApplicationRecord
  has_many :cars, through: :profile_cars
  has_many :equiments, through: :profile_equiments
  has_many :language, through: :profile_languages
  has_many :for_travels, through: :profile_for_travels
  has_many :profile_cars, dependent: :destroy
  has_many :profile_equiments, dependent: :destroy
  has_many :profile_languages, dependent: :destroy
  has_many :profile_for_travels, dependent: :destroy
  belongs_to :user
end
