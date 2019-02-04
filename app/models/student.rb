class Student < ApplicationRecord
  belongs_to :house # The students db table has a house_id FK.
  has_many :appointments
  has_many :teachers, through: :appointments

  validates :name, presence: true
end
