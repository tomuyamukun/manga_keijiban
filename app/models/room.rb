class Room < ApplicationRecord
  has_many :messages
  belongs_to :comic

  validates :name, presence: true
end
