class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking, dependent: :destroy

  validates_length_of :comment, minimum: 10, allow_blank: false
  validates :user_id, presence: true
  validates :booking_id, presence: true, uniqueness: { scope: :user_id }
  validates :rating, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
end
