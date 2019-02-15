class Message < ApplicationRecord
  belongs_to :booking
  belongs_to :from, class_name: "User"
  belongs_to :to, class_name: "User"

  validates :content, presence: true
end
