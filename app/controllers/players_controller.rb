class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    player = Player.create player_params
    redirect_to player # show page
  end

  def edit
    @player = Player.find params[:id]
  end

  def update
    player = Player.find params[:id]
    player.update player_params
    redirect_to player # show page
  end

  def show
    @player = Player.find params[:id]
  end

  def destroy
    player = Player.find params[:id]
    player.destroy
    redirect_to players_path # index
  end

  private
  def player_params # strong params
  params.require(:player).permit(:name, :dob, :position, :club_id, :image)
  end
end
