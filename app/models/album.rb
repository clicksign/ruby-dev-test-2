class Album < ApplicationRecord
  has_and_belongs_to_many :players, foreign_key: :player_id

  validates_presence_of :name
end
