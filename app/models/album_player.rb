class AlbumPlayer < ApplicationRecord
  belongs_to :player
  belongs_to :album
end
