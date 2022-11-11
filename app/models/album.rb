class Album < ApplicationRecord
  has_many :albums_players
  has_many :players, through: :albums_players

  validates_presence_of :name, :players
end
