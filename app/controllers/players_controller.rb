class PlayersController < ApplicationController
  before_action :find_player, only: [:show, :edit, :update]
  # before_action :require_login
  # skip_before_action :require_login, only: [:new, :welcome, :create]

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      session[:player_id] = @player.id
      redirect_to player_path(@player)
    else
      redirect_to root_path
    end
  end

  def show
  end

  def edit
  end

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
