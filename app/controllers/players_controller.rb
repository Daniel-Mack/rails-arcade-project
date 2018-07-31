class PlayersController < ApplicationController

  def new
    @player = Player.new
  end

  def create
    @player = Player.create(player_params)
    @player.save
    redirect_to player_path(@player)
  end

  def show
    @player = find_player
  end

  private

  def player_params
    params.require(:player).permit(:name, :password, :skill_level)
  end

  def find_player
    @player = Player.find_by(params[:id])
  end
end
