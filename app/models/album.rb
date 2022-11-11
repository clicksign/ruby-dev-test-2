class Album < ApplicationRecord
  has_many :albums_players
  has_many :players, through: :albums_players

  def self.columns
    super.reject { |c| c.name == "player_id" }
  end

  validates_presence_of :name, :players
end
