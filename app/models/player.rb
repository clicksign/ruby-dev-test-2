# frozen_string_literal: true

class Player < ApplicationRecord
  has_many :player_albums, dependent: :destroy
  has_many :albums, through: :player_albums
  validates :name, presence: true
end
