class Album < ApplicationRecord
  # TODO, remove on next release
  if AlbumsPlayer.table_exists?
    has_many :albums_players
    has_many :players, through: :albums_players
  else
    belongs_to :player
  end

  validates_presence_of :name, :players
end
