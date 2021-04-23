class Album < ApplicationRecord
  has_many :album_players
  has_many :player, through: :album_players

  validates_presence_of :name
end
