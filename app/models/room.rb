class Room < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :comic

  validates :name, presence: true
end
