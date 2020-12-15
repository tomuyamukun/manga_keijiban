class Room < ApplicationRecord
  belongs_to :user_comic
  # has_many :messages

  validates :name, presence: true
end
