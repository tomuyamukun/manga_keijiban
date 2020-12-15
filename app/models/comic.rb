class Comic < ApplicationRecord
  belongs_to :user
  # has_many :rooms
  has_one_attached :image


with_options presence true do
  validates :title
  validates :summary
  validates :user
  validates :image
end


end
