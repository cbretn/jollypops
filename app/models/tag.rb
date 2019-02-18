class Tag < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  has_many :spaces, through: :space_tags
end
