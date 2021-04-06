class Album < ApplicationRecord
  has_many :album_players, foreign_key: :album_id
  has_many :players, through: :album_players, foreign_key: :album_id

  validates_presence_of :name
end
