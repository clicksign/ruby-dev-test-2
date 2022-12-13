class Album < ApplicationRecord
  has_many :partner_artists, class_name: 'AlbumPlayer', dependent: :destroy
  has_many :players, through: :partner_artists

  validates :name, :players, presence: true
end
