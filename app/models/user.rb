class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :comments
  has_many :favorites
  has_many :favorited_posts, through: :favorites, source: :post
  attachment :profile_image

  validates :name, presence: true
  validates :nickname, presence: true
  validates :email, presence: true
end
