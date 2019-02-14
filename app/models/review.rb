class Review < ApplicationRecord
  validates :content, presence: true
  validates :space_id, presence: true
  validates :user_id, presence: true

  belongs_to :space
end
