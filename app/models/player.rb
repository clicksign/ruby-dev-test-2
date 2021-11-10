class Player < ApplicationRecord
  has_many :authorships
  has_many :albums, through: :authorships

  validates_presence_of :name
end
