class Player < ApplicationRecord
  has_many :albums, through: :album_players
  has_many :album_players, dependent: :destroy

  validates_presence_of :name
end
