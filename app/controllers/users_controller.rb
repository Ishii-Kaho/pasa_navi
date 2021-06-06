class UsersController < ApplicationController
before_action :authenticate_user!

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if
      @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(current_user.id)
    else
      render action: :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :nickname, :email, :profile_image)
  end
end
