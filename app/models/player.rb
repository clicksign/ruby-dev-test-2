# frozen_string_literal: true

class Player < ApplicationRecord
  has_many :album_player, dependent: :restrict_with_error
  has_many :albums, through: :album_player

  validates :name, presence: true
end
