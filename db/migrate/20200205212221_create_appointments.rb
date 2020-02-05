class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :student, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true
      t.datetime :start_time

      t.timestamps
    end
  end
end
