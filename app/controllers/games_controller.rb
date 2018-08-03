class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.save
    redirect_to game_path(@game)
  end

  def show
    @game = Game.find_by_id(params[:id])
  end

private

  def game_params
    params.require(:game).permit(:name, :difficulty_level, :fun_rating)
  end
end
