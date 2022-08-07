# frozen_string_literal: true

class CreateJoinTableAlbumsPlayers < ActiveRecord::Migration[5.2]
  def up
    create_join_table :albums, :players do |t|
      t.index %i[album_id player_id], unique: true
    end

    connection.execute('insert into albums_players(album_id, player_id) select id, player_id from albums')

    remove_reference :albums, :player
  end

  def down
    add_reference :albums, :player, index: true

    connection.execute(
      'update albums set player_id = (select player_id from albums_players where albums_players.album_id = albums.id)'
    )

    drop_table :albums_players
  end
end
