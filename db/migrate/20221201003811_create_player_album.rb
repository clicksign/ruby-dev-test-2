# frozen_string_literal: true

class CreatePlayerAlbum < ActiveRecord::Migration[5.2]
  def change
    create_table :player_albums do |t|
      t.references :player, null: false, foreign_key: true, index: false
      t.references :album, null: false, foreign_key: true, index: false

      t.timestamps
      t.index [:player_id, :album_id], unique: true
    end
  end
end
