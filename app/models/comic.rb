class Comic < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image


with_options presence: true do
  validates :title
  validates :summary
  validates :user
  validates :image
  validates :link
end


end
