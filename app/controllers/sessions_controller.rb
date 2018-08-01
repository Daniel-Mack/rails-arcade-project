class SessionsController < ApplicationController

  def new
    @player = Player.new
  end

  def create
    # raise params.inspect
    player = Player.find_by(name: params[:session][:name])
    # if player&.authenticate(params[:player][:password])
      session[:player_id] = player.id
      redirect_to player_path(player)
    # else
    #   redirect_to new_player_path
    # end
  end

  def destroy
    session[:player_id] = nil
    redirect_to root_path
  end
end
