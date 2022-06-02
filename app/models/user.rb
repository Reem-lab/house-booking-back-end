class User < ApplicationRecord
  has_many :houses
  has_many :reservations

  validates :username, presence: true
end
