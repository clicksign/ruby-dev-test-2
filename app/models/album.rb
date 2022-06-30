class Album < ApplicationRecord
  has_and_belongs_to_many :players

  validates_presence_of :name, :players

  validate :duplicate_players

  def duplicate_players
    return if players.size == players.uniq.size

    errors.add(:duplicate_players, "players can't be duplicate")
  end
end
