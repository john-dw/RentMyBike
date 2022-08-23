class Booking < ApplicationRecord
  belongs_to :bike
  belongs_to :user

  validates :user_id, presence: true
  validates :bike_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true
end
