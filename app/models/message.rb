class Message < ApplicationRecord
  belongs_to :booking
  belongs_to :user_id, through: :bookings
  belongs_to :user_id, through: :spaces

  validates :content, presence: true
end
