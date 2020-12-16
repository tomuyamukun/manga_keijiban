class Room < ApplicationRecord
  # belongs_to :user_comic
  # has_many :messages
  belongs_to :comic

  validates :name, presence: true
end
