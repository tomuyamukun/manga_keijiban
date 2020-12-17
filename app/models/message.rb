class Message < ApplicationRecord
  belongs_to :room
  belongs_to :comic
  validates :text, presence: true
end
