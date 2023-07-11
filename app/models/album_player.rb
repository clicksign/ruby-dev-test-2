class AlbumPlayer < ApplicationRecord
  belongs_to :album
  belongs_to :player

  validates :album, :player, presence: true
end
