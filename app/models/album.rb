class Album < ApplicationRecord
  belongs_to :player, through: :player_albums

  validates_presence_of :name
end
