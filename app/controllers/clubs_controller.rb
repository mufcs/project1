class ClubsController < ApplicationController
  before_action :check_for_login

  def index
    @clubs = Club.all
  end

  # /clubs/create
  def new
    @club = Club.new
  end

  def create
   club = Club.create club_params # create      # associate
   redirect_to club
  end

  def  edit
   @club = Club.find params[:id]
 end

  def update
    club = Club.find params[:id]
    club.update club_params
    redirect_to club # show page
  end

  def show
   @club = Club.find params[:id]
  end

  def  destroy
   club = Club.find params[:id]
   club.destroy
   redirect_to clubs_path
 end


  private
  def club_params
  params.require(:club).permit(:title, :country, :city, :founded, :image)
  end
end
