class CharactersController < ApplicationController

  def new
    @character = Character.new(game_id: params[:game_id])
  end

  def create
    character = Character.new(character_params)
    character.save
    redirect_to game_character_path(character, game_id: character.game)
  end

  def show
    @character = Character.find_by_id(params[:id])
  end

  private

  def character_params
    params.require(:character).permit(:name, :game_id)
  end
end
