class Genre < ApplicationRecord
  has_many :posts
  
  enum genre: {
    "--ジャンル選択--": 0, グルメ: 1, トイレ: 2, 喫煙所: 3
  }
end
