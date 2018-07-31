class SessionsController < ApplicationController

  def new
    @player = Player.new
  end
end
