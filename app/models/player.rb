class Player < ApplicationRecord
  has_many :player_albums, class_name: :PlayerAlbum, dependent: :destroy
  has_many :albums, through: :player_albums

  validates_presence_of :name
end
