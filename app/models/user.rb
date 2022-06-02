class User < ApplicationRecord
  has_many :houses

  validates :username, presence: true
end
