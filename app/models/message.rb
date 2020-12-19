class Message < ApplicationRecord
  # belongs_to :room
  belongs_to :comic

  # validates :room, presence: true
  validates :text, presence: true
end
