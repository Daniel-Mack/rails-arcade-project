class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @game = find_game
  end

private

  def find_game
    @game = Game.find_by_id(params[:id])
  end
end
