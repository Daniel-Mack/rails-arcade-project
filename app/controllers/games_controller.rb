# frozen_string_literal: true

# :nodoc:
class GamesController < ApplicationController
  protect_from_forgery
  before_action :find_game, only: %i[show edit update]
  before_action :character, only: %i[update show]

  def index
    @games = current_player.games
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    if @game.save
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
    game_json = @game.to_json(
      only: %i[name difficulty_level fun_rating id],
      include: [characters:
      { only: %i[name game_id id] }]
    )
    respond_to do |format|
      format.html { render 'show' }
      format.json { render json: game_json }
    end
  end

  def show
    respond_to do |format|
      format.html { render 'show' }
      format.json do
        render json: @game.to_json(
          only: %i[name difficulty_level fun_rating id],
          include: [characters:
          { only: %i[name game_id id] }]
        )
      end
    end
  end

  private

  def game_params
    params.require(:game).permit(:name, :difficulty_level, :fun_rating)
  end

  def find_game
    @game = Game.find_by(id: params[:id])
  end

  def character
    @character = Character.create(
      id: params[:id],
      name: params[:name],
      game_id: params[:game_id]
    )
  end
end
