class Doctor < ApplicationRecord
  has_and_belongs_to_many :specialities

  validates :name, presence: true
end