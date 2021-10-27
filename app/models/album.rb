class Album < ApplicationRecord
  has_and_belongs_to_many :players, uniqueness: true

  validates_presence_of :name
end
