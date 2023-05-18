class PlayerAlbum < ApplicationRecord
  belongs_to :albums
  belongs_to :player

  validates_presence_of :name
end
