class Album < ApplicationRecord
  belongs_to :player

  validates_presence_of :name
end
