class Player < ApplicationRecord
  has_and_belongs_to_many :albums, foreign_key: :album_id

  validates_presence_of :name
end
