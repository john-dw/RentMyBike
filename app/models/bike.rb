class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :category, presence: true
  validates :price_per_day, presence: true
  validates :location, presence: true
  validates :name, presence: true
  validates :model, presence: true
  validates :picture_url, presence: true
end
