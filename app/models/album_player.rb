class AlbumPlayer < ApplicationRecord
  belongs_to :album
  belongs_to :player

  validates :player_id, uniqueness: { scope: :album_id }
end
