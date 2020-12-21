class Room < ApplicationRecord
  belongs_to :comic

  validates :text, presence: true
end
