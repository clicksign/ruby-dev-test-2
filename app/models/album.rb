class Album < ApplicationRecord
  has_many :players_albums
  has_many :players, through: :players_albums

  validates_presence_of :name

  validate :must_player

  def must_player
    errors.add(:base, "Presence of players is required") unless players.any?
  end
end
