class CharactersController < ApplicationController
  helper_method :image

  def show
    @character = Character.find_by_id(params[:id])
  end
end
