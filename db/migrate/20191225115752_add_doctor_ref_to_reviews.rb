class AddDoctorRefToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :doctor, null: false, foreign_key: true
  end
end
