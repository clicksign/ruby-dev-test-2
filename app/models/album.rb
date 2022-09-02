class Album < ApplicationRecord
  has_and_belongs_to_many :players

  validates_presence_of :name

  validate :has_players

  private

  def has_players
    errors.add(:players, "needs at least one player") if players.empty?
  end
end
