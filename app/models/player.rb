class Player < ApplicationRecord
  has_many :participations
  has_many :albums, through: :participations

  validates_presence_of :name
end
