class PasasController < ApplicationController
  def index
    @pasas = Pasa.page(params[:page]).reverse_order
  end

  def show
    @pasa = Pasa.find(params[:id])
    @posts = @pasa.posts
    # @user = @post.user
  end
end
