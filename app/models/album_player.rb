class AlbumPlayer < ApplicationRecord
  belongs_to :album
  belongs_to :player

  validates :album_id, uniqueness: { scope: :player_id }
end
