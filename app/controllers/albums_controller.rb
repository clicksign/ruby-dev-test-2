class AlbumsController < ApplicationController
  def index
    @albums = Album.includes(:players).all
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def album_params
    return {} unless params.has_key?(:album)
    params.require(:album).permit(:name, player_ids: [] )
  end


end
