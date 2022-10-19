class AddPlayerAlbums < ActiveRecord::Migration[5.2]
  def change
    create_join_table :players, :albums do |t|
      t.index [:company_id, :user_id], unique: true
    end

    # migrate albums to new table
    up_only do
      Album.all.each do |a|
        unless a.player_id.nil?
          a.update(players: [Player.find(a.player_id)])
        end
      end

      remove_column :albums, :player_id
    end
  end
end
