class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many  :bikes
  has_many  :bookings
  has_many  :reviews
  has_one_attached :photo

  validates :username, presence: true
  validates :email, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
