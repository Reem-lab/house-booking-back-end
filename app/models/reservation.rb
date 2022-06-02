class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :house

  validates :date, presence: true
end
