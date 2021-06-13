class Post < ApplicationRecord
  has_many :comments
  has_many :favorites
  has_many :favorited_users, through: :favorites, source: :user
  belongs_to :user
  belongs_to :pasa
  belongs_to :genre
  attachment :image

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  def self.search(search,word)
    @post = Post.all
  end
  # validates :visit_weekday, inclusion: { in: ["平日","休日","祝日"] }
  # validates :cleanliness, numericality: {
  #   less_than_or_equal_to: 5,
  #   greater_than_or_equal_to: 1
  # }, presence: true






  enum genre: {
    "--ジャンル選択--":0,グルメ:1,トイレ:2,喫煙所:3
  }
end
