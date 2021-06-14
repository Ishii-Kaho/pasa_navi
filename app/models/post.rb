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

  def self.search(search, word)
          if search == "forward_match"
                          @post = Post.where("title LIKE?","#{word}%")
          elsif search == "backward_match"
                          @post = Post.where("title LIKE?","%#{word}")
          elsif search == "perfect_match"
                          @post = Post.where("#{word}")
          elsif search == "partial_match"
                          @post = Post.where("title LIKE?","%#{word}%")
          else
                          @post = Post.all
          end
  end
  
  validates :cleanliness, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true
  
  validates :congestion, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true
  
  validates :satisfaction, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true
  
  validates :pasa_id, presence: true
  validates :genre_id, presence: true
  validates :title, presence: true
  validates :opinion, presence: true
  validates :visit_time, presence: true
  






  enum genre: {
    "--ジャンル選択--":0,グルメ:1,トイレ:2,喫煙所:3
  }
end
