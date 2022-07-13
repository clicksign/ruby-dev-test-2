class AlbumsPlayer < ApplicationRecord
  belongs_to :player, inverse_of: :albums_player
  belongs_to :album, inverse_of: :albums_player

  validates :player_id, uniqueness: { scope: :album_id }
end
