class Album < ApplicationRecord
  has_and_belongs_to_many :player

  validates_presence_of :name
end
