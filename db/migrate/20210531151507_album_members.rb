class AlbumMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :album_members do |t|
      t.references :player, foreign_key: true, index: true
      t.references :album, foreign_key: true, index: true
    end
  end
end
