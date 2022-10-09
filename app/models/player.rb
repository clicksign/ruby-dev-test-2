class Player < ApplicationRecord
  # TODO, remove on next release
  if AlbumsPlayer.table_exists?
    has_many :albums_players
    has_many :albums, through: :albums_players
  else
    has_many :albums
  end

  validates_presence_of :name
end
