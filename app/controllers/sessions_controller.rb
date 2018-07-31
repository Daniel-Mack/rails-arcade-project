class SessionsController < ApplicationController

  def welcome
  end
  
  def login
    @player = Player.new
  end
end
