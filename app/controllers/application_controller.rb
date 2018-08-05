class ApplicationController < ActionController::Base

  def logged_in?
    @player = current_player
  end

  def current_player
    @current_player ||= Player.find_by(id: session[:player_id])
  end
end
