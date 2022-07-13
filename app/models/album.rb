class Album < ApplicationRecord
  has_many :albums_player
  has_many :players, through: :albums_player

  validates :name, presence: true, allow_blank: false
  validates :players, length: { minimum: 1 }
  validate :uniques_players

  private

  def uniques_players
    currently_players = self.players.select(:id).uniq
    new_players = player_ids - currently_players
    if new_players.size != player_ids.uniq.size
      errors.add(:players, "O album não pode ter artistas repetidos!")
    end
  end
end
