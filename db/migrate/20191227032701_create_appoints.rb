class CreateAppoints < ActiveRecord::Migration[6.0]
  def change
    create_table :appoints do |t|
      t.date :date
    end
  end
end
