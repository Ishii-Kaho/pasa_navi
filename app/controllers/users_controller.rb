class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @posts = @user.posts
  end

  def edit
    @user = current_user
    redirect_to user_path(current_user.id) unless current_user.id == @user.id
  end

  def update
    @user = current_user
    if @user.update(user_params)
      flash[:notice] = 'ユーザー情報を更新しました。.'
      redirect_to user_path(current_user.id)
    else
      render action: :edit
    end
  end

  def destroy
    @user = current_user
    @user.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :nickname, :email, :profile_image)
  end
end
