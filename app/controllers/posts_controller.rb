class PostsController < ApplicationController
  def new
    @post = Post.new
    @pasas = Pasa.all
  end

  def create
    @post = Post.new(post_params)
    pasa = Pasa.find_by(facility: params[:facility])
    # DBにあるPASA名以外の入力不可にする
    if pasa.nil?
      @pasas = Pasa.all
      flash[:alert] = '正しいPA/SA名を入力して下さい'
      render :new
    else
      @post.pasa_id = pasa.id
      @post.user_id = current_user.id
      if @post.save
        flash[:notice] = "投稿しました。"
        redirect_to post_path(@post)
      else
        render :new
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def index
    # 新着順のため
    @post = Post.all
    # いいね数順に並び替える
    posts = Post.includes(:favorited_users).sort { |a, b| b.favorited_users.size <=> a.favorited_users.size }
    @posts = Kaminari.paginate_array(posts).page(params[:page]).per(12)
  end

  def show
    @post = Post.find(params[:id])
    @pasa = @post.pasa
    @genre = @post.genre
    @comment = Comment.new
  end

  private

  def post_params
    params.require(:post).permit(:pasa_id, :genre_id, :image, :cleanliness, :congestion, :satisfaction,
                                 :visit_time, :visit_weekday, :title, :opinion)
  end
end
