class Booking < ApplicationRecord
  belongs_to :bike, dependent: :destroy
  belongs_to :user, dependent: :destroy
  has_many :reviews

  validates :user_id, presence: true
  validates :bike_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true

  def reviewable?
    self.status == "accepted" && self.end_date < Date.today
  end
end
