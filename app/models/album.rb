class Album < ApplicationRecord
  has_many :album_players
  has_many :players, through: :album_players, source: :player

  validates_presence_of :name
  validates :players, presence: true, length: { minimum: 1 }
end
