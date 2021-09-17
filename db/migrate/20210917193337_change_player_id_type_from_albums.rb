class ChangePlayerIdTypeFromAlbums < ActiveRecord::Migration[5.2]
  def change
    change_column :albums, :player_id, :json
  end
end
