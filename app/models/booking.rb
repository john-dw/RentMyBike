class Booking < ApplicationRecord
  belongs_to :bike
  belongs_to :user
  has_many :reviews

  validates :user_id, presence: true
  validates :bike_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true
end
