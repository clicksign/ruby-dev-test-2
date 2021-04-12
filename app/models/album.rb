class Album < ApplicationRecord
  has_and_belongs_to_many :players
  accepts_nested_attributes_for :players

  validates :name, presence: true
  validates :players, presence: true
end
