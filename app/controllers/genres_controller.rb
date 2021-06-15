class GenresController < ApplicationController
  def gourmet
    @genre = Genre.find(1)
    @posts = @genre.posts
  end

  def toilet
    @genre = Genre.find(2)
    @posts = @genre.posts
  end

  def smoking
    @genre = Genre.find(3)
    @posts = @genre.posts
  end

  def show
    @genre = Genre.find(params[:id])
    @post = @genre.posts
  end
end
