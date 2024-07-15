class UsersController < ApplicationController

  def edit
  end

  def update
    current_user.update(user_params)
  end

  def show
    @name = current_user.name
    @posts = current_user.posts
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end