class ChangePlayerAlbumRelationshipToManyToMany < ActiveRecord::Migration[5.2]
  def up
    create_join_table :albums, :players do |t|
      t.index :album_id
      t.index :player_id
    end

    # data migration
    Album.all.each do |album|
      unless album.player_id.nil? then
        player = Player.find(album.player_id)
        player.albums << album
        player.save!
      end
    end

    remove_reference :albums, :player
  end

  def down
    add_foreign_key :albums, :player

    # It is not possible rollback from many-to-many without losing information.
    # Because the test does not specify the correct way to make this rollback,
    # this transaction drops all information.

    drop_join_table :albums, :players
  end
end
