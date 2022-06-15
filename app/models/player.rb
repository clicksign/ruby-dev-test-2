class Player < ApplicationRecord
  has_many :players_albums
  has_many :albums, through: :players_albums

  validates_presence_of :name
end
