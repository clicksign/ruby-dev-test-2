# frozen_string_literal: true

class MoveAssociationToAlbumPlayers < ActiveRecord::Migration[5.2]
  def up
    Album.unscoped.find_each do |album|
      album.player_ids = [album.player_id]
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
