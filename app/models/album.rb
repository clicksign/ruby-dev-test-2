# frozen_string_literal: true

class Album < ApplicationRecord
  has_many :album_player, dependent: :restrict_with_error
  has_many :players, through: :album_player

  validates :name, presence: true
end
