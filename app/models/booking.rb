class Booking < ApplicationRecord
  belongs_to :bike
  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates :user_id, presence: true
  validates :bike_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true

  def reviewable?
    self.status == "accepted" && self.end_date < Date.today
  end
end
