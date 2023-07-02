# frozen_string_literal: true

class Album < ApplicationRecord
  has_many :player_albums
  has_many :players, through: :player_albums

  validates :name, presence: true
end
