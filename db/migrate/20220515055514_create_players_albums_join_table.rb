# frozen_string_literal: true

class CreatePlayersAlbumsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :players, :albums
  end
end
