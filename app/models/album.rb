class Album < ApplicationRecord
  has_many :player_albums, dependent: :destroy
  has_many :players, through: :player_albums

  validates_presence_of :name
end
