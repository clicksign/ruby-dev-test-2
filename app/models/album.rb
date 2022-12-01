# frozen_string_literal: true

class Album < ApplicationRecord
  # Association
  has_many :player_albums, dependent: :destroy
  has_many :players, through: :player_albums

  # Validations
  validates_presence_of :name
end
