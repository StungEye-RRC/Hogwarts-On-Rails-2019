class Teacher < ApplicationRecord
  belongs_to :house # The teachers db table has a house_id FK.

  validates :name, presence: true
end
