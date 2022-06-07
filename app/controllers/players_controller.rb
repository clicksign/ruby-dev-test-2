class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def player_params
    return {} unless params.has_key?(:player)
    params.require(:player).permit(:name)
  end
end
