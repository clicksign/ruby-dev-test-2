class Player < ApplicationRecord
  #has_many :albums
  has_and_belongs_to_many :albums

  validates_presence_of :name
end
