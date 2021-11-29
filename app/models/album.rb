class Album < ApplicationRecord
  has_many :album_player, dependent: :restrict_with_error
  has_many :players, through: :album_player

  validates_presence_of :name
end
