class Album < ApplicationRecord
  validates_presence_of :name
  has_and_belongs_to_many :players

  validates :players, length: { :minimum => 1 }
end
