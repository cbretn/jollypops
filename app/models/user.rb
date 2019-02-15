class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :spaces
  has_many :reviews
  has_many :bookings
  has_many :messages

  has_many :incoming_messages, class_name: "Message", foreign_key: "to_id"

  has_many :sent_messages, class_name: "Message", foreign_key: "from_id"

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
