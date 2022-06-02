class AddAlbumsPlayersRelationData < ActiveRecord::Migration[5.2]

  class AlbumsPlayers < ApplicationRecord
    self.table_name = 'albums_players'
  end

  def up
    values = Album.all.pluck(:id, :player_id).map do |id, player_id|
      { album_id: id, player_id: player_id }
    end

    AlbumsPlayers.create values
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
