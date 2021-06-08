class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      flash[:notice] = "投稿しました"
      redirect_to posts_path
    else
      render new
    end
  end

  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end

    private

  def post_params
    params.require(:post).permit(:facility, :prefecture, :highway_name, :cleanliness, :congestion, :satisfaction, :visit_time, :visit_weekday, :title, :opinion)
  end
end
