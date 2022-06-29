class Player < ApplicationRecord
  has_many :releases
  has_many :albums, through: :releases

  validates_presence_of :name
end
