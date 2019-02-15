class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :spaces
  has_many :reviews
  has_many :bookings
  has_many :messages

  has_many :incoming_messages, class_name: "Message", foreign_key: "to_id"

  has_many :sent_messages, class_name: "Message", foreign_key: "from_id"

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :photo, PhotoUploader
end
