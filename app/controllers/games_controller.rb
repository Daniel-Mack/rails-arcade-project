# frozen_string_literal: true

# :nodoc:
class GamesController < ApplicationController
  before_action :find_game

  def index
    @games = current_player.games
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.valid?
      @game.save
      flash[:alert] = 'After creating a game, a character is required to play.'
      redirect_to game_path(@game)
    else
      flash[:alert] = 'Name must exist and cannot contain special characters.'
      redirect_to new_game_path
    end
  end

  def edit; end

  def update
    @game.update(game_params)
    redirect_to game_path(@game)
  end

  def show; end

  private

  def game_params
    params.require(:game).permit(:name, :difficulty_level, :fun_rating)
  end

  def find_game
    @game = Game.find_by(id: params[:id])
  end
end
