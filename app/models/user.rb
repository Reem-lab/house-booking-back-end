class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :houses
  has_many :reservations

  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
