class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true
  validates :gender, presence: true
  validates :id_no, presence: true
  validates :address, presence: true
  validates :tel, presence: true
  has_one :profile
end
