class AddRelationPlayersAndAlbuns < ActiveRecord::Migration[5.2]
  def change
    create_table :players_albums, id: false do |t|
      t.belongs_to :player
      t.belongs_to :album
    end
  end
end
