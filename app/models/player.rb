class Player < ApplicationRecord
  has_many :albums_player
  has_many :albums, through: :albums_player

  validates_associated :albums_player

  validates :name, presence: true, allow_blank: false
end
