# frozen_string_literal: true

# :nodoc:
class CharactersController < ApplicationController
  protect_from_forgery

  def index
    @player = current_player
    @characters = current_player.characters
  end

  def new
    @character = Character.new
  end

  def create
    character = Character.new(character_params)
    character.save
    character_json = character.to_json(only: [:name, :game_id, :id])
    respond_to do |format|
      format.json { render json: character_json }
    end
  end

  def show
    @character = Character.find_by_id(params[:id])
  end

  private

  def character_params
    params.fetch(:character, {}).permit(:name, :game_id, :player_id)
  end
end
