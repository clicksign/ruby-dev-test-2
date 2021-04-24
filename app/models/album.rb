class Album < ApplicationRecord
  has_many :participations
  has_many :players, through: :participations

  validates_presence_of :name
end
