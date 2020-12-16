class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #  has_many :user_comics      
  has_many :comics
  has_many :rooms, through: :comics
  with_options presence: true do
    validates :email
    validates :nickname
  end
  VALID_PASSWORD_REGIX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,}+\z/i.freeze
  validates :password, format: { with: VALID_PASSWORD_REGIX, message: 'Include both letters and numbers' }

end

