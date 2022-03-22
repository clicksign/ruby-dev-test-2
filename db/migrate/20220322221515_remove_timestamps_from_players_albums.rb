class RemoveTimestampsFromPlayersAlbums < ActiveRecord::Migration[5.2]
  def change
    remove_column :players_albums, :created_at, :string
    remove_column :players_albums, :updated_at, :string
  end
end
