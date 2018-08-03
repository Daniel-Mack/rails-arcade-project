class CharactersController < ApplicationController

  def new
    @character = Character.new
  end

  # def create
  #   debugger
  #   @character = Character.new(character_params)
  #   @game = Game.find_by_id(params[:id])
  #   @character.save
  #   redirect_to game_path(@game)
  # end

  # def Create
  #   @character = Character.new(character_params)
  #   @character = Game.find(params[:game_id]).characters
  # end


  def show
    # binding.pry
    @character = Character.find_by_id(params[:id])
  end

  private

  def character_params
    params.require(:character).permit(:name)
  end
end
