# frozen_string_literal: true
class Player < ApplicationRecord
  # Association
  has_many :player_albums
  has_many :albums, through: :player_albums

  # Validations
  validates_presence_of :name
  validates_uniqueness_of :name, case_sensitive: false

end
