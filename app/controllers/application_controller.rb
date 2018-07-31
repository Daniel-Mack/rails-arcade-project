class ApplicationController < ActionController::Base

  def require_login
    redirect_to "/" unless session.include? :player_id
  end

  def logged_in?
    @player = current_player
  end

  def current_player
    @player = Player.find_by(id: session[:player_id])
  end
end
