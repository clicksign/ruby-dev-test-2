class Player < ApplicationRecord
  has_many :album_members
  has_many :albums, through: :album_members

  validates :name, presence: true
end
