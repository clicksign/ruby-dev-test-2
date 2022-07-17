class Album < ApplicationRecord
  has_and_belongs_to_many :players

  validates_presence_of :name
  validate :has_one_or_more_players

  def has_one_or_more_players
    errors.add(:players, "need one or more players") if players.empty?
  end
end
