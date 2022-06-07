class PlayerAlbum < ApplicationRecord
  belongs_to :player
  belongs_to :album

  validates :player_id, uniqueness: { scope: :album_id }
end
