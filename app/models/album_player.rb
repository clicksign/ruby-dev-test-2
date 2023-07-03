class AlbumPlayer < ApplicationRecord
  
  belongs_to :player
  belongs_to :album

  validates :album, :player, presence: true
end
