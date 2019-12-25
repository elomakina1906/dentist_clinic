class CreateDoctor < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :name

    end
  end
end
