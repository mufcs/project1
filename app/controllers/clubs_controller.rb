class ClubsController < ApplicationController

  def home
  end

  # /clubs/create
  def new
    @club = Club.new
    if request.post?
      club = Club.create user_params
      redirect_to "/clubs/home"
    end
  end

  private
  def user_params
  params.require(:club).permit(:title, :country, :city, :founded)
  end
end
