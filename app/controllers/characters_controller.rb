class CharactersController < ApplicationController

  def show
    @character = Character.find_by_id(params[:id])
  end
end
