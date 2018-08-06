# frozen_string_literal: true

# :nodoc:
class CharactersController < ApplicationController

  def index
    @player = current_player
    @characters = current_player.characters
  end

  def new
    @character = Character.new(game_id: params[:game_id])
  end

  def create
    @character = Character.new(character_params)
    @character.player = current_player
    if @character.valid?
      @character.save
      redirect_to game_character_path(@character, game_id: @character.game)
    else
      flash[:alert] = 'name must exist and cannot contain special characters.'
      redirect_to new_game_character_path(@character, game_id: @character.game)
    end
  end

  def show
    @character = Character.find_by_id(params[:id])
    # raise @character.inspect
  end

  private

  def character_params
    params.require(:character).permit(:name, :game_id)
  end
end
