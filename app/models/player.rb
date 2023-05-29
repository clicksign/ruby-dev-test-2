# frozen_string_literal: true

class Player < ApplicationRecord
  has_many :album_players
  has_many :albums, through: :album_players, inverse_of: :players

  validates_presence_of :name
end
