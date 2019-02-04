class Appointment < ApplicationRecord
  belongs_to :student # There is a student_id FK in the appointments table.
  belongs_to :teacher # There is a teacher_id FK in the appointments table.
end
