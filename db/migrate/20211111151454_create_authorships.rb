class CreateAuthorships < ActiveRecord::Migration[5.2]
  def change
    create_table :authorships do |t|
      t.references :player, foreign_key: true
      t.references :album, foreign_key: true

      t.timestamps
    end

    Album.all.each do |a|
      a.authorships.create(player_id: a.player_id)
    end

    remove_reference :albums, :player, foreign_key: true
  end
end
