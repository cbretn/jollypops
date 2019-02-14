class Booking < ApplicationRecord
  validates :check_in, presence: true, uniqueness: true
  validates :check_out, presence: true, uniqueness: true
  has_many :bookings
  belongs_to :user_id
  belongs_to :space
end
