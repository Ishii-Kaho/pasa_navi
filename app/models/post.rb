class Post < ApplicationRecord
  has_many :comments
  has_many :favorites
  belongs_to :user
  belongs_to :pasa
  belongs_to :genre
  attachment :image
end
