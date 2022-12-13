class AlbumPlayer < ApplicationRecord
  belongs_to :album
  belongs_to :player

  validates :album_id, uniqueness: { scope: :player_id }

  validates :player_id, uniqueness:  { scope: :album_id }
end
