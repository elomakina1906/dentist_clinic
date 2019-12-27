class Appoint < ApplicationRecord
  belongs_to :doctor
  belongs_to :user

  validates :date, presence: true
end