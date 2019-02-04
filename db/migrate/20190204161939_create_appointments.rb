class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :student, foreign_key: true
      t.references :teacher, foreign_key: true
      t.datetime :appointment_date

      t.timestamps
    end
  end
end
