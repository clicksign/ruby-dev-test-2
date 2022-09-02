class Player < ApplicationRecord
  has_many :albums_players, dependent: :destroy
  has_many :albums, through: :albums_players  

  validates :name, presence: true
end
