class AlbumPlayer < ApplicationRecord
  belongs_to :album, foreign_key: :album_id
  belongs_to :player, foreign_key: :player_id
end
