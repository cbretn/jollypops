class Booking < ApplicationRecord
  validates :check_in, presence: true
  validates :check_out, presence: true
  validates :space_id, presence: true
  validates :user_id, presence: true
  belongs_to :user
  belongs_to :space
end
