class CreatePlayerAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :player_albums do |t|
      t.player :references
      t.album :references

      t.timestamps
    end
  end
end
