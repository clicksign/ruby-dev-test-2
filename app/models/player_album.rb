class PlayerAlbum < ApplicationRecord
  belongs_to :album
  belongs_to :player

  validates_presence_of :name
  validates :player, uniqueness: { scope: [:player_id, :album_id] }
end
