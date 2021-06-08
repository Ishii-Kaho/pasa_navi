class PostsController < ApplicationController
  def new
    @post = Post.new
    @pasas = Pasa.all
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save!
    redirect_to posts_path
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:facility, :prefecture, :highway_name, :cleanliness, :congestion, :satisfaction,
                                 :visit_time, :visit_weekday, :title, :opinion)
  end
end
