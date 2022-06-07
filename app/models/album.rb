class Album < ApplicationRecord
  has_many :player_albums, dependent: :destroy
  has_many :players, through: :player_albums

  validates :name, presence: true, length: { maximum: 255 }
end
