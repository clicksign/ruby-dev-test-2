class Album < ApplicationRecord
  has_one :player
  has_and_belongs_to_many :players, join_table: "albums_players"

  validates :name, :players, presence: true
end
