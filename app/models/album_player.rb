class AlbumPlayer < ApplicationRecord
  belongs_to :album
  belongs_to :player

  validates_presence_of :album, :player
end
