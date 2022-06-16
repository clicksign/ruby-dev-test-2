class AlbumPlayer < ApplicationRecord
  belongs_to :album, required: true
  belongs_to :player, required: true
end
