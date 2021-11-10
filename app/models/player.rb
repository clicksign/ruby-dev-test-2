class Player < ApplicationRecord
  has_many :albums

  validates_presence_of :name
end
