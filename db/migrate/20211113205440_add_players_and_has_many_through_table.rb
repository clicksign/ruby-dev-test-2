class AddPlayersAndHasManyThroughTable < ActiveRecord::Migration[5.2]
  def change
    create_table :album_players do |t|
      t.belongs_to :player, index: true
      t.belongs_to :album, index: true
      t.timestamps
    end
  end
end
