# frozen_string_literal: true

class AddPlayersToAlbums < ActiveRecord::Migration[5.2]
  def up
    Album.all.each do |album|
      album.players << album.player
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
