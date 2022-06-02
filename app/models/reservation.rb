class Reservation < ApplicationRecord
  validates :date, presence: true
end
