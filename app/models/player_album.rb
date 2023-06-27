# annotate
# ---
# == Schema Information
#
# Table name: player_albums
#
#  album_id  :integer
#  player_id :integer
#
# Indexes
#
#  index_player_albums_on_album_id                (album_id)
#  index_player_albums_on_album_id_and_player_id  (album_id,player_id) UNIQUE
#  index_player_albums_on_player_id               (player_id)
#
# ---
class PlayerAlbum < ApplicationRecord
  # Validates
  # ---
  validates :player_id, uniqueness:  { scope: :album_id }
  validates :album_id, uniqueness: { scope: :player_id }

  # Associations
  # ---
  belongs_to :player
  belongs_to :album
end
