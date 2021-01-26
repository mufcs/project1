class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.create user_params.except(:password_confirmation)
    redirect_to "/clubs/new"
  end

  private
  def user_params
  params.require(:user).permit(:email, :password, :password_confirmation, :type)
  end
end
