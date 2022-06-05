class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
  end

  def create
  end
end
