class Player < ApplicationRecord
  has_many :album_players, dependent: :restrict_with_error
  has_many :albums, through: :album_players

  validates_presence_of :name
end
