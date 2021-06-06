class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post.user_id = current_user.id
    if @post.save
      flash[:notice] = "投稿しました"
      redirect_to posts_path
    else
      render new
    end
  end
end
