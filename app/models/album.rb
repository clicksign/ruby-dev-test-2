class Album < ApplicationRecord
  has_many :albums_players
  has_many :players, through: :albums_players

  # Remove after migrations
  def self.columns
    super.reject { |c| c.name == "player_id" }
  end
  # Remove after migrations

  validates_presence_of :name
end
