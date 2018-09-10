# frozen_string_literal: true

# :nodoc:
class PlayersController < ApplicationController
  before_action :find_player, only: %i[show edit update]

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      session[:player_id] = @player.id
      redirect_to player_path(@player)
    else
      render :new
    end
  end

  def show
    player_json = @player.to_json(only: [:name, :skill_level, :age],
                                          include: [characters: { only: [:name, :id]}])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: player_json }
    end
  end

  def edit; end

  def update
    @player.update(player_params)
    redirect_to player_path(@player)
  end

  private

  def player_params
    params.require(:player).permit(
      :name, :password, :skill_level, :age
    )
  end

  def find_player
    @player = Player.find_by_id(params[:id])
  end
end
