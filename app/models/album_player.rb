class AlbumPlayer < ApplicationRecord
  belongs_to :album
  belongs_to :player

  validates_uniqueness_of :player_id, scope: :album_id
end
