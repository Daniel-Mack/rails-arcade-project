class SessionController < ApplicationController

  def welcome
  end

  def new
    @player = current_player
  end

  def create
    # player = Player.find_by(name: params[:player][:name])
    # if player&.authenticate(params[:password])
    if player = Player.authenticate(params[:password])
      session[:player_id] = player.id
      redirect_to player_path(player)
    else
      redirect_to new_player_path(player)
    end
  end
end
