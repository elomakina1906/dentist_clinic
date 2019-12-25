class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.string :email
      t.string :phone_number
    end
  end
end
