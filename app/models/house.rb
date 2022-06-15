class House < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy

  validates :address, presence: true
  validates :city, presence: true
  validates :zip_code, presence: true, numericality: { greater_than: 0 }
  validates :image, presence: true
  validates :rooms, presence: true, numericality: { greater_than: 0 }
  validates :bathrooms, presence: true, numericality: { greater_than: 0 }
  validates :surroundings, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :construction_year, presence: true
end
