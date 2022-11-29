class Album < ApplicationRecord
  has_many :album_players, dependent: :destroy
  has_many :players, through: :album_players

  validates_presence_of :name, :players
end
