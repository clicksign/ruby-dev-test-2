class Player < ApplicationRecord
  has_many :album_players, foreign_key: :player_id
  has_many :albums, through: :album_players, foreign_key: :player_id

  validates_presence_of :name
end
