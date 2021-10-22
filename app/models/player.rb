class Player < ApplicationRecord
  has_many :albums # TO-DO: remove Player references on Album
  has_many :partnerships, foreign_key: 'player_id', class_name: 'AlbumPlayer'
  has_many :albums, through: :partnerships

  validates_presence_of :name
end
