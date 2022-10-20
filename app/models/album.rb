class Album < ApplicationRecord
  has_and_belongs_to_many :players

  validates_presence_of :name
end
