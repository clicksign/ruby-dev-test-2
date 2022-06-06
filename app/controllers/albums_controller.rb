class AlbumsController < ApplicationController
  def index
    @albums = Album.includes(:players).all
  end
end
