class PlayersAlbum < ApplicationRecord
  belongs_to :player
  belongs_to :album
end
