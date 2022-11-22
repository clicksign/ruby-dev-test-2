class CreateJoinTableAuthorships < ActiveRecord::Migration[5.2]
  def up
    create_join_table :albums, :players, table_name: :authorships

    Album.select(:id, :player_id).find_in_batches do |albums|
      Authorship.import([:album_id, :player_id], albums.pluck(:id, :player_id), validate: false)
    end

    add_index :authorships, :album_id
    add_index :authorships, :player_id
  end

  def down
    drop_table :authorships
  end
end
