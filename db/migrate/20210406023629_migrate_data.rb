class MigrateData < ActiveRecord::Migration[5.2]
  def up
    Album.find_each do |a|
      if a.player_id
        a.players << Player.find(a.player_id)
      end
    end
  end

  def down
    AlbumPlayer.delete_all
  end
end
