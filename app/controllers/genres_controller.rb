class GenresController < ApplicationController
  def gourmet
    @genre = Genre.find(1)
    @posts = @genre.posts.page(params[:page]).per(12)
  end

  def toilet
    @genre = Genre.find(2)
    @posts = @genre.posts.page(params[:page]).per(12)
  end

  def smoking
    @genre = Genre.find(3)
    @posts = @genre.posts.page(params[:page]).per(12)
  end
end
