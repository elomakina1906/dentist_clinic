class CreateAppointment < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.time :time
    end
  end
end
