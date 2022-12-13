class Player < ApplicationRecord
  has_many :partner_artists, class_name: 'AlbumPlayer', dependent: :destroy
  has_many :albums, through: :partner_artists

  validates :name, presence: true
end
