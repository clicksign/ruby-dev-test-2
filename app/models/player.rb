class Player < ApplicationRecord
  has_many :albums, through: :player_albums

  validates_presence_of :name
end
