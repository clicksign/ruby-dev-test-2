# frozen_string_literal: true

class CreateTablePlayerAlbum < ActiveRecord::Migration[5.2]
  def change
    create_table :player_albums do |t|
      t.belongs_to :player, comment: 'player id'
      t.belongs_to :album, comment: 'album id'
      t.timestamps
    end
  end
end
