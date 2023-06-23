class Player < ApplicationRecord
  has_many :partner_artists, class_name: 'AlbumsPlayer', dependent: :destroy
  has_many :albums, through: :partner_artists

  validates_presence_of :name
end
