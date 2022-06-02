class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :jwt_authenticatable,
         :registerable,
         jwt_revocation_strategy: JwtDenylist

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6, maximum: 20 }
  validates :password_confirmation, presence: true, length: { minimum: 6, maximum: 20 }
  validates :username, presence: true, length: { minimum: 2, maximum: 20 }
  has_many :houses
  has_many :reservations

end
