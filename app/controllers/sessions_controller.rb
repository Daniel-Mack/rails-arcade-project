# frozen_string_literal: true

# :nodoc:
class SessionsController < ApplicationController
  def new
    @player = Player.new
  end

  def create
    player = Player.find_by(name: params[:player][:name])
    if player&.authenticate(params[:player][:password])
      session[:player_id] = player.id
      redirect_player
    else
      flash[:alert] = 'Incorrect password. Please try again.'
      redirect_to login_path
    end
  end

  def destroy
    session[:player_id] = nil
    redirect_to root_path
  end

  private

  def redirect_player
    player = Player.find_by(name: params[:player][:name])
    redirect_to player_path(player), notice: 'Thanks for logging in!'
  end
end
