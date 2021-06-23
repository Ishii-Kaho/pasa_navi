class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorited_users, through: :favorites, source: :user
  belongs_to :user
  belongs_to :pasa
  belongs_to :genre
  attachment :image

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  def self.search(search, word)
    @post = if search == 'forward_match'
              Post.where('title LIKE?', "#{word}%")
            elsif search == 'backward_match'
              Post.where('title LIKE?', "%#{word}")
            elsif search == 'perfect_match'
              Post.where(word.to_s)
            elsif search == 'partial_match'
              Post.where('title LIKE?', "%#{word}%")
            else
              Post.all
            end
  end

  validates :cleanliness, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }

  validates :congestion, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }

  validates :satisfaction, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }

  validates :pasa_id, presence: true
  # validates :genre_id, presence: true
  validates :title, presence: true
  validates :opinion, presence: true
  validates :visit_time, presence: true
end
