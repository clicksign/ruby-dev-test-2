class Album < ApplicationRecord
  has_many :players, through: :album_players
  has_many :album_players, dependent: :destroy

  validates_presence_of :name
end
