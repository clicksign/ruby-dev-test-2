class Player < ApplicationRecord
  has_and_belongs_to_many :albums

  validates_presence_of :name
end
