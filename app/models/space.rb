# The Space class models pop-up spaces, identified by a name and location.
# Spaces are rented by rentees via bookings
class Space < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true, uniqueness: true
  validates :price, presence: true
  validates :description, presence: true

  belongs_to :user
  has_many :reviews, dependent: :destroy
  # has_many :bookings
end
