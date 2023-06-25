class PopulateAuthorship < ActiveRecord::Migration[5.2]
  def up
    Album.find_each do |album|
      Authorship.create player: album.player, album: album
    end
  end
end
