class AlbumPlayer < ApplicationRecord
    self.table_name = :albums_players

    belongs_to :player, foreign_key: :player_id
    belongs_to :album, foreign_key: :album_id
end