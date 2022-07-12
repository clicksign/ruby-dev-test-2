class AddAlbumPlayers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :players, :albums do |t|
      t.index %i[player_id album_id], unique: true
    end

    up_only do
      Album.all.each do |u|
        unless u.player_id.nil?
          u.update(players: [Player.find(u.player_id)])
        end
      end

      remove_column :albums, :player_id
    end
  end
end
