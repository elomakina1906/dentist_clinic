class CreateJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :doctors, :specialities do |t|
      t.index :doctor_id
      t.index :speciality_id
    end
  end
end
