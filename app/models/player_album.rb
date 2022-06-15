class PlayerAlbum < ApplicationRecord
  belongs_to :player
  belongs_to :album
end