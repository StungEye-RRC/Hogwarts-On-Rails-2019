class Teacher < ApplicationRecord
  belongs_to :house # The teachers db table has a house_id FK.
  has_many :appointments
  has_many :students, through: :appointments

  validates :name, presence: true
end
