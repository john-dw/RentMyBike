class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :category, presence: true, inclusion: { in: %w(Road Mountain City Gravel Touring) }
  validates :price_per_day, presence: true
  validates :location, presence: true
  validates :name, presence: true
  validates :model, presence: true
  validates :photo, presence: true
end
