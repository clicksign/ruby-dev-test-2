class Player < ApplicationRecord
  has_many :albums, dependent: :destroy # TO-DO: remove Player references on Album
  has_many :partnerships, class_name: 'AlbumPlayer', dependent: :destroy
  has_many :albums, through: :partnerships

  validates :name, presence: true
end
