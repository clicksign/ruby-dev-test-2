class Player < ApplicationRecord
  has_many :split_albums, class_name: 'SplitAlbum', foreign_key: 'players_id'
  has_many :albums, through: :split_albums, class_name: 'Album'

  validates_presence_of :name
end
