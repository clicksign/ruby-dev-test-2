class CreateAlbumsPlayers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :albums, :players do |t|
      t.index %i[album_id player_id]
    end
  end
end
